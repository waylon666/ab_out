module ab_out(clk,a,b);

input clk;
reg a;
reg b;
output a;
output b;

reg[16:0] cnt;

always @(posedge clk)
begin
   if (cnt != 16'd160)
		cnt <= cnt + 1;
	else
      cnt <= 0;
end

always @(posedge clk)
begin
	if (cnt == 16'd0) begin
		a<=1'b1;
		b<=1'b0;
	end
	if (cnt == 16'd40) begin
		a<=1'd1;
		b<=1'd1;
	end
	if (cnt == 16'd80) begin
		a<=1'd0;
		b<=1'd1;
		end
	if (cnt == 16'd120)begin
		a<=1'd0;
		b<=1'd0;
		end
	if (cnt == 16'd160) begin
		a<=1'd1;
		b<=1'd0;
	end
end
endmodule