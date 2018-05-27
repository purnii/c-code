module tlc_12led(clk,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12);
  input clk;
  output reg d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12;
  reg [2:0]state;
parameter  ON=1, OFF=0;
parameter  s0=0, s1=1, s2=2, s3=3, s4=4, s5=5;
initial 
begin 
  state=s0;
end
always@(posedge clk)
case(state)
s0: state<=s1;
s1: state<=s2;
s2: state<=s3;
s3: state<=s4;
s4: state<=s5;
s5: state<=s0;
default: state<=s0;
endcase
always@(state)
case(state)
  s0: begin
      d1=OFF;
      d2=OFF;
      d3=ON;
      d4=OFF;
      d5=ON;
      d6=OFF;
      d7=OFF;
      d8=OFF;
      d9=ON;
      d10=OFF;
      d11=ON;
      d12=OFF;
    end
  
  s1: begin
      d1=OFF;
      d2=ON;
      d3=OFF;
      d4=OFF;
      d5=OFF;
      d6=ON;
      d7=OFF;
      d8=ON;
      d9=OFF;
      d10=OFF;
      d11=OFF;
      d12=ON;
    end
      
  s2: begin
     d1=OFF;
      d2=OFF;
      d3=ON;
      d4=OFF;
      d5=ON;
      d6=OFF;
      d7=OFF;
      d8=OFF;
      d9=OFF;
      d10=OFF;
      d11=OFF;
      d12=OFF;
    end
     
  s3: begin
     d1=OFF;
      d2=OFF;
      d3=OFF;
      d4=OFF;
      d5=OFF;
      d6=ON;
      d7=OFF;
      d8=ON;
      d9=OFF;
      d10=OFF;
      d11=OFF;
      d12=OFF;
   end
   
  s4: begin
     d1=OFF;
      d2=OFF;
      d3=OFF;
      d4=OFF;
      d5=OFF;
      d6=OFF;
      d7=OFF;
      d8=OFF;
      d9=ON;
      d10=OFF;
      d11=ON;
      d12=OFF;
   end
  
  s5: begin
     d1=OFF;
      d2=ON;
      d3=OFF;
      d4=OFF;
      d5=OFF;
      d6=OFF;
      d7=OFF;
      d8=OFF;
      d9=OFF;
      d10=OFF;
      d11=OFF;
      d12=ON;
     end
     
  default: begin
      d1=OFF;
      d2=OFF;
      d3=OFF;
      d4=OFF;
      d5=OFF;
      d6=OFF;
      d7=OFF;
      d8=OFF;
      d9=OFF;
      d10=OFF;
      d11=OFF;
      d12=OFF;
    end
    endcase
    endmodule
