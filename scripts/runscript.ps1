# Remove all previous simulation file
if(Test-Path "..\sim\work"){
    Remove-Item -Path '..\sim\work' -Recurse
}

# Create work directory
vlib work
# Map work directory
vmap work work
# Compile
vlog ../rtl/verilog/ring_oscillator.v ../tb/simple_tb.sv

# Simulate in gui mode
vsim ring_osc_tb -gui -do "add wave -position insertpoint sim:/ring_osc_tb/*; run -all;"