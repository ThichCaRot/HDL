transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {counter8bit.vo}

vlog -vlog01compat -work work +incdir+D:/Projects/HDL/counter8bit {D:/Projects/HDL/counter8bit/counter8bit_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  counter8bit_tb

add wave *
view structure
view signals
run -all
