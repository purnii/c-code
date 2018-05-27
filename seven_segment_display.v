module seven_segment_display(a,b,c,d,e,f,g,z);
  input [3:0]z;
  output a,b,c,d,e,f,g;
  wire p0,p1,p2,p3;
  wire []q;
  not (p0,z[0]);
  not (p1,z[1]);
  not (p2,z[3]);
  not (p3,z[4]);
  and (q[0],a,p1,p2);
  and (q[1],p0,b,d);
  and (q[2],p1,p2,p3);
  and (q[3],p0,c);
  and (q[4],a,p2,d);
  and (q[5],p0,c,d);
  and (q[6],p0,p1);
  and (q[7],p0,b);
  and (q[8],p1,p2);
  and (q[9],p0,b,p2,d);
  and (q[10],p0,p1,c);
  and (q[11],p0,p1,p3);
  and (q[12],p0,c,p3);
  and (q[13],a,p1,p2);
  and (q[14],p0,p3);
  and (q[15],a,p1,p2);
  and (q[16],p0,b,p3);
  and (q[17],p0,p2,p3);
  and (q[18],p0,b,c);
  or (a,q[0],q[1],q[2],q[3]);
  
  
{

}