transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/lab_01/Solution/lab_01/lab_01.vhd}

vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/lab_01/Solution/lab_01/lab_01_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  lab_01_tb

add wave *
view structure
view signals
run 1600 ps
