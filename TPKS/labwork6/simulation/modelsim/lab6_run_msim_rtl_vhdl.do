transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/ASUS/Desktop/TPKS/labwork6/mas.vhd}
vcom -2008 -work work {C:/Users/ASUS/Desktop/TPKS/labwork6/Change.vhd}

vcom -2008 -work work {C:/Users/ASUS/Desktop/TPKS/labwork6/testChange.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  testChange

add wave *
view structure
view signals
run 100 ps