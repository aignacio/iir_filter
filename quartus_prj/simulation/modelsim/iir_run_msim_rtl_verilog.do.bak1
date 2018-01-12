transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/aignacio/projects/iir/quartus_prj {/home/aignacio/projects/iir/quartus_prj/iir.v}

vlog -vlog01compat -work work +incdir+/home/aignacio/projects/iir/quartus_prj {/home/aignacio/projects/iir/quartus_prj/filter_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench_500Hz

add wave *
view structure
view signals
run -all
