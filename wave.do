onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Red /tb_top/u0/rst
add wave -noupdate /tb_top/u0/clk
add wave -noupdate -radix unsigned /tb_top/u0/main_dll/cnt_clk
add wave -noupdate -color Orange -radix binary /tb_top/u0/new_clk
add wave -noupdate -color {Orange Red} -radix binary /tb_top/u0/start_stop
add wave -noupdate -color Firebrick /tb_top/u0/start_temp
add wave -noupdate -color {Indian Red} /tb_top/u0/start2
add wave -noupdate -color Yellow -radix unsigned /tb_top/u0/ms_cnt
add wave -noupdate -color Khaki -radix unsigned /tb_top/u0/s_cnt
add wave -noupdate -color Yellow -radix unsigned /tb_top/u0/m_cnt
add wave -noupdate -color {Slate Blue} /tb_top/u0/msec0/new_clk
add wave -noupdate -color Blue /tb_top/u0/sec0/new_clk
add wave -noupdate -color {Slate Blue} /tb_top/u0/min0/new_clk
add wave -noupdate -radix unsigned /tb_top/u0/msec0/cnt_clk
add wave -noupdate -radix unsigned /tb_top/u0/sec0/cnt_clk
add wave -noupdate -radix unsigned /tb_top/u0/min0/cnt_clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {98828 ps} 0} {{Cursor 2} {7186005 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 203
configure wave -valuecolwidth 38
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
configure wave -timelineunits ns
update
WaveRestoreZoom {7074205 ps} {7336705 ps}
