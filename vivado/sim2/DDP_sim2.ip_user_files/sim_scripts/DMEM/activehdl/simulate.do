transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+DMEM  -L xpm -L blk_mem_gen_v8_4_8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.DMEM xil_defaultlib.glbl

do {DMEM.udo}

run 1000ns

endsim

quit -force