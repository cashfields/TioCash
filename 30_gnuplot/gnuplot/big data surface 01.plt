# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'dgrid3d.7.png'
set bar 1.000000 front
set style circle radius graph 0.02, first 0.00000, 0.00000 
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set dgrid3d 30,30, 5
unset key
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set view 60, 75, 1, 1
set hidden3d back offset 1 trianglepattern 3 undefined 1 altdiagonal bentover
set style data lines
unset paxis 1 tics
unset paxis 2 tics
unset paxis 3 tics
unset paxis 4 tics
unset paxis 5 tics
unset paxis 6 tics
unset paxis 7 tics
set title "dgrid3d 30,30 qnorm 5" 
set paxis 1 range [ * : * ] noreverse nowriteback
set paxis 2 range [ * : * ] noreverse nowriteback
set paxis 3 range [ * : * ] noreverse nowriteback
set paxis 4 range [ * : * ] noreverse nowriteback
set paxis 5 range [ * : * ] noreverse nowriteback
set paxis 6 range [ * : * ] noreverse nowriteback
set paxis 7 range [ * : * ] noreverse nowriteback
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front  noinvert bdefault
x = 0.0
## Last datafile plotted: "bigdata.txt"
splot "bigdata.txt" u 1:2:3 w l