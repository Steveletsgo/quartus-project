module BIG_CLOCK(en,reset,clk,y,a,b);
input en;
input reset;
input clk;
output y;
output [3:0]a;
output [3:0]b;
reg [3:0]a;reg [3:0]b; reg y;
always @(posedge clk)
	begin
		if (reset==1) begin a=0;b=0;y=0; end
		if (en == 1)
		begin
		if (b<9)
			b=b+1;
		else
			begin
				b=0;
				a=a+1;
			end
		if (b+a*10==59)
				begin
					y=1;
				end
		if (b+a*10==60)
				begin
					a=0;b=0;y=0;
				end
		end
	end
endmodule