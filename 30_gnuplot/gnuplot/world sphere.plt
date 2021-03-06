# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'world.2.png'
set dummy u, v
set angles degrees
unset key
set parametric
set view 70, 40, 0.8, 1.2
set view  equal xyz
set samples 32, 32
set isosamples 9, 9
set mapping spherical
set yzeroaxis
set xyplane relative 0
set title "3D version using spherical coordinate system" 
set urange [ -90.0000 : 90.0000 ] noreverse nowriteback
set vrange [ 0.00000 : 360.000 ] noreverse nowriteback
DEBUG_TERM_HTIC = 119
DEBUG_TERM_VTIC = 119
## Last datafile plotted: "world.cor"
splot cos(u)*cos(v),cos(u)*sin(v),sin(u) with lines lc rgb "cyan" ,'world.dat' with lines lc rgb "blue" , 'world.cor' with points lt 1 pt 2