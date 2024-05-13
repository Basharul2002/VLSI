module TLC_BINARY (input wire CLK, RST, GO, 
                   output wire READY, RED, GREEN, YELLOW); 
  
  //Internal signal definitions 
  reg [2:0] P_STATE; 
  wire [2:0] N_STATE;
  
  //Next State Logic 
  assign N_STATE[0] = ~RST & ((~P_STATE[2] & ~P_STATE[1] & ~P_STATE[0] & GO) 
                              | (~P_STATE[0] & (P_STATE[2] ^ P_STATE[1])) 
                              | (P_STATE[2] & P_STATE[1])); 
  
  assign N_STATE[1] = ~RST & (P_STATE[1] ^ P_STATE[0]); 
 
 assign N_STATE[2] = ~RST & ((P_STATE[2] & ~P_STATE[0])  
                             | (P_STATE[0] & (P_STATE[2] ^ P_STATE[1]))); 


  //Present State Register 
  always @ (posedge CLK) 
    begin
      P_STATE[0] <= N_STATE[0]; 
      P_STATE[1] <= N_STATE[1]; 
      P_STATE[2] <= N_STATE[2]; 
    end 

  //Output Logic 
  assign READY = ~P_STATE[2] & ~P_STATE[1] & ~P_STATE[0]; 
  assign RED = ~P_STATE[2] & (P_STATE[1] | P_STATE[0]); 
  assign GREEN = P_STATE[2] & (~P_STATE[1] | ~P_STATE[0]); 
  assign YELLOW = P_STATE[2] & P_STATE[1] & P_STATE[0]; 
 
endmodule
