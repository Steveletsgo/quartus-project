module hours(en,reset,clk,a,b);
input en;
input reset;
input clk;
output [3:0]a;
output [3:0]b;
reg [3:0]a;reg [3:0]b;
always @(posedge clk)
	begin
		if (reset==1) begin a=0;b=0; end
		if (en == 1)
		begin
		if (b<9)
			b=b+1;
		else
			begin
				b=0;
				a=a+1;
			end
		if (b+a*10==24)
				begin
					a=0;b=0;
				end
		end
	end
endmodule