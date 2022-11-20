transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {combinacional_7_1200mv_85c_slow.vo}

vcom -93 -work work {C:/Users/usuario/Desktop/Laboratorio-TyDD2/Combinacional/combinacional_testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc"  combinacional_testbench

add wave *
view structure
view signals
run -all
