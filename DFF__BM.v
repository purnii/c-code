module dff__bm(d,q, clock);
  input d,clock;
  output reg q;
  always@ (posedge clock)
  begin
    q=d;
  end
endmodule
