module sixteen_to1mux_using_2to1_mux(y,a,b,s0,s1,s2,s3);
  input [15:0]a,b;
  output y;
  input s0,s1,s2,s3;
  wire [7:0]p;
  wire [3:0]z;
  wire x0,x1;
  two_to1mux two_to1mux1(p[0],a[0],b[0],s0);
  two_to1mux two_to1mux2(p[1],a[1],b[1],s0);
  two_to1mux two_to1mux3(p[2],a[2],b[2],s0);
  two_to1mux two_to1mux4(p[3],a[3],b[3],s0);
  two_to1mux two_to1mux5(p[4],a[4],b[4],s0);
  two_to1mux two_to1mux6(p[5],a[5],b[5],s0);
  two_to1mux two_to1mux7(p[6],a[6],b[6],s0);
  two_to1mux two_to1mux8(p[7],a[7],b[7],s0);
  two_to1mux two_to1mux9(z[0],p[0],p[1],s1);
  two_to1mux two_to1mux10(z[1],p[2],p[3],s1);
  two_to1mux two_to1mux11(z[2],p[4],p[5],s1);
  two_to1mux two_to1mux12(z[3],p[6],p[7],s1);
  two_to1mux two_to1mux13(x0,z[0],z[1],s2);
  two_to1mux two_to1mux14(x1,z[2],z[3],s2);
  two_to1mux two_to1mux15(y,x0,x1,s3);
endmodule
  