module eight_to_3_encoder(q0,q1,q2,d);
  input [7:0]d;
  output q0,q1,q2;
  or (q0,d[1],d[3],d[5],d[7]);
  or (q1,d[2],d[3],d[6],d[7]);
  or (q2,d[4],d[5],d[6],d[7]);
endmodule
