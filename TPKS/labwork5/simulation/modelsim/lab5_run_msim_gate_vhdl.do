transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {lab5.vho}

vcom -93 -work work {C:/Users/ASUS/Desktop/TPKS/labwork5/testChange.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=lab5_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  testChange

add wave *
view structure
view signals
run 800 ps
