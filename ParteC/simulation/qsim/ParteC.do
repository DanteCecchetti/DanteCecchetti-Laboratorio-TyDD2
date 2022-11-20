onerror {quit -f}
vlib work
vlog -work work ParteC.vo
vlog -work work ParteC.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Sum4bit_vlg_vec_tst
vcd file -direction ParteC.msim.vcd
vcd add -internal Sum4bit_vlg_vec_tst/*
vcd add -internal Sum4bit_vlg_vec_tst/i1/*
add wave /*
run -all
