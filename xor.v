module four_way_TLC(clk,l1,l2,l3,l4);
  input clk;
  output l1,l2,l3,l4;
  
  reg [2:0]state;
  reg l1,l2,l3,l4;
  
parameter  RED=1, GREEN=0;
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
      l1=GREEN;
      l3=GREEN;
      l2=RED;
      l4=RED;
    end
  
  s1: begin
      l2=GREEN;
      l4=GREEN;
      l1=RED;
      l3=RED;
    end
      
  s2: begin
     l1=GREEN;
     l2=RED;
     l3=RED;
     l4=RED;
   end
     
  s3: begin
     l2=GREEN;
     l1=RED;
     l3=RED;
     l4=RED;
   end
   
  s4: begin
     l3=GREEN;
     l2=RED;
     l1=RED;
     l4=RED;
   end
  
  s5: begin
     l4=GREEN;
     l2=RED;
     l3=RED;
     l1=RED;
     end
     
  default: begin
       l1=GREEN;
      l3=GREEN;
      l2=RED;
      l4=RED;
    end
    endcase
    endmodule