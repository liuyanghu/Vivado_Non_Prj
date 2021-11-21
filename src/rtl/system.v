`include "system_defines.v"

module system(
input clk_i,
input rst_i,
input vld,
input[`DAT_WIDTH - 1:0] dat_i,
output rst_o,
output[`DAT_WIDTH - 1:0] dat_o
);

wire clk_16M,mmcm_locked;

mmcm ip_mmcm
(
.resetn(rst_i),
.clk_in1(clk_i),

.clk_out2(clk_16M), // 16 MHz, this clock we set to 16MHz 
.locked(mmcm_locked)
);

reset_sys ip_reset_sys
(
.slowest_sync_clk(clk_16M),
.ext_reset_in(rst_i), // Active-low
.aux_reset_in(1'b1),
.mb_debug_sys_rst(1'b0),
.dcm_locked(mmcm_locked),
.mb_reset(),
.bus_struct_reset(),
.peripheral_reset(rst_o),
.interconnect_aresetn(),
.peripheral_aresetn()
);

test dut(
	.clk(clk_16M),
	.rstn(rst_o),
	.vld(vld),
	.dat_i(dat_i),
	.dat_o(dat_o)
);

endmodule