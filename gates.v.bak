module all_gates(y,a,b);
  input (a,b);
  output [7:0]y;
  wire a;
  wire b;
  wire y;
  and(y[0],a,b);
  or(y[1],a,b);
  not(y[2],a);
  buf (y[3],a);
  nor (y[4],a,b);
  nand (y[5],a,b);
  xor (y[6],a,b);
  xnor (y[7],a,b);
endmodule
