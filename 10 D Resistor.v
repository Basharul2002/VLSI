module D_REG_4BIT (input wire CLK, RST, 
                   input wire [3:0] D, 
                   output reg [3:0] Q); 
  wire NEXT_Q[3:0]; 
  assign NEXT_Q[0] = ~RST & D[0]; 
  assign NEXT_Q[1] = ~RST & D[1]; 
  assign NEXT_Q[2] = ~RST & D[2]; 
  assign NEXT_Q[3] = ~RST & D[3]; 
  
  always @ (posedge CLK) 
    begin 
      Q[0] <= NEXT_Q[0]; 
      Q[1] <= NEXT_Q[1]; 
      Q[2] <= NEXT_Q[2]; 
      Q[3] <= NEXT_Q[3]; 
    end 
endmodule
