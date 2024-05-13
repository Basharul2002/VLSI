module half_adder_s (input wire a, b,
                     output wire sum,carry);

  xor(sum, a, b);
  and(carry, a, b);

endmodule
