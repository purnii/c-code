module fa(sum,car,a,b,c);
  input a,b,c;
  output sum,car;
  wire p1,p2,p3;
  xor (sum,a,b,c);
  and (p1,a,b);
  and (p2,a,b);
  and (p3,a,b);
  or (car,p1,p2,p3);
endmodule
