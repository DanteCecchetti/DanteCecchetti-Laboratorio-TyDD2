transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/cecch/Desktop/Laboratorio-TyDD2/Restador_Completo/restadorcompleto.vhd}

vcom -93 -work work {C:/Users/cecch/Desktop/Laboratorio-TyDD2/Restador_Completo/test_rest.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  test_rest

add wave *
view structure
view signals
run -all
