module sr_latch(q,qbar,s,r);
  input s,r;
  output q,qbar;
 nand (q,s,r);
 nand (qbar,s,r);
endmodule 
  
