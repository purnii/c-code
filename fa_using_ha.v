module fa_using_ha(sum,car,a,b,c);
  input a,b,c;
  output sum,car;
  wire p1,p2,p3;
  ha h1(p1,p2,a,b);
  ha h2(sum,p3,p1,c);
  or(car,p2,p3);
endmodule
  
  
  
  
