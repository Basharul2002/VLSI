module full_adder_d (input A, B, cin,
                     output sum, carry);
  assign sum = A ^ B ^ cin;
  assign carry = (A & B) | (A & cin) | (B & cin);

endmodule
