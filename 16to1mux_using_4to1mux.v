module sixteen_to1mux_using_4to1mux(y,a,b,c,d,s1,s0);
  input [15:0]a,b,c,d;
  output y;
  input s1,s0;
  wire p1,p2,p3,p4;
  four_to_1_mux four_to_1mux1(p1,a[0],b[0],c[0],d[0],s1,s0);
  four_to_1_mux four_to_1mux2(p2,a[1],b[1],c[1],d[1],s1,s0);
  four_to_1_mux four_to_1mux3(p3,a[2],b[2],c[2],d[2],s1,s0);
  four_to_1_mux four_to_1mux4(p4,a[3],b[3],c[3],d[3],s1,s0);
  four_to_1_mux four_to_1mux5(y,p1,p2,p3,p4,s1,s0);
endmodule
  
  
  
