module jiaoshi(clknormal,clktime,en,clkout,enout,choose);
input clknormal;input clktime;input en;input choose;
reg clkout;
reg enout;
output clkout; 
output enout;
always @(*)
begin
	if(en==0)
begin
	clkout=clknormal;
	enout=1;
end
else if(en==1&&choose==1)
	begin
	enout=1;
	clkout=clktime;
	end
end
endmodule