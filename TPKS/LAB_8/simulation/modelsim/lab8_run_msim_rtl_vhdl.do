transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/LAB_8/programm.vhd}
vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/LAB_8/decriment.vhd}
vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/LAB_8/orr.vhd}
vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/LAB_8/addition.vhd}
vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/LAB_8/multiplexer.vhd}
vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/LAB_8/division.vhd}
vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/LAB_8/ring_shear.vhd}

vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/LAB_8/programm_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  programm_tb

add wave *
view structure
view signals
run 3000 ps
