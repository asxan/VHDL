transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Studing/2 course/2 semester/TPKS/8 lab/ArithmeticUnit.vhd}
vcom -93 -work work {E:/Studing/2 course/2 semester/TPKS/8 lab/ALU_N.vhd}

vcom -93 -work work {E:/Studing/2 course/2 semester/TPKS/8 lab/ALU_N_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  ALU_N_tb

add wave *
view structure
view signals
run 250 ps
