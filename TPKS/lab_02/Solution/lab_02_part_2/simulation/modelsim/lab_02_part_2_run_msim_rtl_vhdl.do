transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/lab_02/Solution/lab_02_part_2/lab_02_part_2_package.vhd}
vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/lab_02/Solution/lab_02_part_2/lab_02_part_2.vhd}

vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/lab_02/Solution/lab_02_part_2/lab_02_part_2_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  lab_02_part_2_tb

add wave *
view structure
view signals
run 1600 ps
