module one_to_4_demux(q,s0,s1);
  input s0,s1;
  output [3:0]q;
  wire p0,p1;
  not (p0,s0);
  not (p1,s1);
  and (q[0],p0,p1);
  and (q[1],s0,p1);
  and (q[2],p0,s1);
  and (q[3],s0,s1);
  endmodule 
