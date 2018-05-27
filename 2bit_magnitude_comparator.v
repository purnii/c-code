module two_bit_magnitude_comparator(z0,g,z1,x,y);
  input x,y;
  output z0,g,z1; // z0:- x>y , g:- x=y , z1:- x<y //
  wire p0,p1,z0,z1;
  not (p0,x);
  not (p1,y);
  and (zo,x,p1);
  and (z1,p0,y);
  nor (g,z0,z1);
endmodule

  
  
