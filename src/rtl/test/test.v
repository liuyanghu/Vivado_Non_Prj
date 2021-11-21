module test(
input clk,
input rstn,
input vld,
input[`DAT_WIDTH - 1:0] dat_i,
input[`DAT_WIDTH - 1:0] dat_o
);

reg[`DAT_WIDTH - 1:0] dat_r;
assign dat_o = dat_r;

always @(posedge clk or negedge rstn) begin
	if (!rstn) begin
		// reset
		dat_r <= `DAT_WIDTH'd0;	
	end
	else begin
		if(vld == 1'b1)
			dat_r <= dat_i + `DAT_WIDTH'd1;	
	end
end
endmodule