module four_to_1_mux(y,a,b,c,d,s1,s0);
  input s1,s0,a,b,c,d;
  output y;
  wire p1,p2,r3,r4,r5,r6;
  not (p1,s0);
  not (p2,s1)
  and (r3,a,p1,p2);
  and (r4,b,p2,s0);
  and (r5,c,s1,p1);
  and (r6,d,s1,s0);
  or (y,r3,r4,r5,r6);
endmodule;

  
