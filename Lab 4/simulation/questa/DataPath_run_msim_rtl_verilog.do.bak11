transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 4 {U:/CPE166/Lab 4/DataPath.v}
vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 4 {U:/CPE166/Lab 4/multiplexer.v}
vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 4 {U:/CPE166/Lab 4/multiplexer4bits.v}
vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 4 {U:/CPE166/Lab 4/ALU.v}
vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 4 {U:/CPE166/Lab 4/DFlipFlop.v}

vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 4 {U:/CPE166/Lab 4/DataPath_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  DataPath

add wave *
view structure
view signals
run -all
