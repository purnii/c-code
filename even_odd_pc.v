module even_odd_pc(ep,op,a,b,c,d);
  input a,b,c,d;
  output ep,op;
  wire p1,p2;
  xor (p1,a,b);
  xor (p2,p1,c);
  xor (ep,p2,d);
  xnor (op,p2,d);
endmodule
