module ha(sum,car,a,b);
  input a,b;
  output sum,car;
  xor(sum,a,b);
  and(car,a,b);
endmodule

