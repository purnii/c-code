module full_adder_using_decoder(sum,car,a,b,c);
  input a,b,c;
  output sum,car;
  wire p0,p1,p2,r0,r1,r2,r3,z0,z1,z2;
  not (p0,a);
  not (p1,b);
  not (p2,c);
  and (r0,p0,p1,c);
  and (r1,p0,b,p2);
  and (r3,a,p1,p2);
  and (r4,a,b,c);
  and (z0,p0,b,c);
  and (z1,a,p1,c);
  and (z2,a,b,p2);
  or (sum,r0,r1,r2,r3);
  or (car,z0,z1,z2,r3);
endmodule

