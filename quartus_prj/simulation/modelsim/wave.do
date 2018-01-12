onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_500Hz/clk
add wave -noupdate /testbench_500Hz/reset
add wave -noupdate -format Analog-Step -height 84 -max 589.0 -min -589.0 /testbench_500Hz/x
add wave -noupdate -format Analog-Step -height 84 -max 568.99999999999989 -min -607.0 /testbench_500Hz/DUT/s1_s2
add wave -noupdate -format Analog-Step -height 84 -max 410.0 -min -507.0 /testbench_500Hz/DUT/s2_s3
add wave -noupdate -color Green -format Analog-Step -height 84 -max 192.0 -min -340.0 /testbench_500Hz/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {7759855808 ps} 0} {{Cursor 3} {3736066823 ps} 0 Magenta default} {{Cursor 4} {3835951449 ps} 0 Magenta default}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {10937367 ns}
