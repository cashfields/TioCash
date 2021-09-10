# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'world.4.png'
set dummy u, v
set angles degrees
unset key
set parametric
set view 70, 40, 0.8, 1.2
set view  equal xy
set samples 32, 32
set isosamples 13, 13
set mapping cylindrical
set hidden3d back offset 0 trianglepattern 3 undefined 1 altdiagonal bentover
set yzeroaxis
set xyplane relative 0
set title "3D version using cylindrical coordinate system" 
set urange [ -180.000 : 180.000 ] noreverse nowriteback
set vrange [ -90.0000 : 90.0000 ] noreverse nowriteback
DEBUG_TERM_HTIC = 119
DEBUG_TERM_VTIC = 119
## Last datafile plotted: "world.cor"
splot cos(u),sin(u),v with lines lc rgb "cyan" 
#splot cos(u),sin(u),v with lines lc rgb "cyan" ,'world.dat' with lines lc rgb "blue" lw 2, 'world.cor' with points lt 1 pt 2