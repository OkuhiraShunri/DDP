transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+MMRAM  -L xpm -L blk_mem_gen_v8_4_8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MMRAM xil_defaultlib.glbl

do {MMRAM.udo}

run 1000ns

endsim

quit -force
