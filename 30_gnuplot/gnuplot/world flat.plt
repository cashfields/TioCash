# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'world.1.png'
set format x "%D %E" geographic
set format y "%D %N" geographic
unset key
set style data lines
set yzeroaxis
set title "Gnuplot Correspondences\ngeographic coordinate system" 
set xrange [ -180.000 : 180.000 ] noreverse nowriteback
set yrange [ -90.0000 : 90.0000 ] noreverse nowriteback
DEBUG_TERM_HTIC = 119
DEBUG_TERM_VTIC = 119
## Last datafile plotted: "world.cor"
plot 'world.dat' with lines lc rgb "blue" , 'world.cor' with points lt 1 pt 2