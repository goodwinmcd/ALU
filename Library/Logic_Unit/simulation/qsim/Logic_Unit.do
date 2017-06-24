onerror {exit -code 1}
vlib work
vlog -work work Logic_Unit.vo
vlog -work work logic_unit.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Logic_Unit_vlg_vec_tst -voptargs="+acc"
vcd file -direction Logic_Unit.msim.vcd
vcd add -internal Logic_Unit_vlg_vec_tst/*
vcd add -internal Logic_Unit_vlg_vec_tst/i1/*
run -all
quit -f
