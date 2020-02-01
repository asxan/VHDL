transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/v.zhovnir/Desktop/Lab1.1/Lab1.vhd}

vcom -93 -work work {C:/Users/v.zhovnir/Desktop/Lab1.1/Lab1_Tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  Lab1_Tb

add wave *
view structure
view signals
run 1600 ps
