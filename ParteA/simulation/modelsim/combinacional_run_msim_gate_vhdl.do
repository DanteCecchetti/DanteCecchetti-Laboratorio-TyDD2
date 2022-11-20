transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {combinacional_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/usuario/Desktop/Laboratorio-TyDD2/Combinacional/combinacional_testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=combinacional_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  combinacional_testbench

add wave *
view structure
view signals
run -all
