transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/cecch/Desktop/Laboratorio/ParteC/Sumador_completo.vhd}
vcom -93 -work work {C:/Users/cecch/Desktop/Laboratorio/ParteC/Sum4bit_conv.vhd}

vcom -93 -work work {C:/Users/cecch/Desktop/Laboratorio/ParteC/sum4bit_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  sum4bit_testbench

add wave *
view structure
view signals
run 100 ns
