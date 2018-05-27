module two_to1mux(y,a,b,s0);
  input a,b,s0;
  output y;
  wire g,r0,r1;
  not (g,s0);
  and (r0,a,g);
  and (r1,b,s0);
  or (y,r0,r1);
endmodule
  
  
