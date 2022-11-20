transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/cecch/Desktop/Laboratorio/ParteB/FFD.vhd}
vcom -93 -work work {C:/Users/cecch/Desktop/Laboratorio/ParteB/sumador_FFD.vhd}

vcom -93 -work work {C:/Users/cecch/Desktop/Laboratorio/ParteB/Sumador_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Sumador_testbench

add wave *
view structure
view signals
run 300 ns
