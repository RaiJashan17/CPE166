transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 2/Part\ 2 {U:/CPE166/Lab 2/Part 2/multiplexer.v}
vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 2/Part\ 2 {U:/CPE166/Lab 2/Part 2/multiplexer4bits.v}
vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 2 {U:/CPE166/Lab 2/halfAdder.v}
vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 2 {U:/CPE166/Lab 2/fullAdder.v}
vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 2/Part\ 2 {U:/CPE166/Lab 2/Part 2/CarrySelectAdder.v}
vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 2/Part\ 2 {U:/CPE166/Lab 2/Part 2/rippleCarryAdder.v}

vlog -vlog01compat -work work +incdir+U:/CPE166/Lab\ 2/Part\ 2 {U:/CPE166/Lab 2/Part 2/CarrySelectAdder_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  CarrySelectAdder

add wave *
view structure
view signals
run -all
