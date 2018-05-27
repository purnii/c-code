module four_bit_binary_to_gary_converter(g0,g1,g2,g3,b0,b1,b2,b3);
  input b0,b1,b2,b3;
  output g0,g1,g2,g3; // g3==b3 //
  xor (g0,b0,b1);
  xor (g1,b1,b2);
  xor (g2,b2,b3);
  buf (g3,b3);
endmodule
  
  
