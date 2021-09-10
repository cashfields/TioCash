#!/gnuplot
#
#    
#    	G N U P L O T
#    	Version 5.0 patchlevel 6    last modified 2017-03-18
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2017
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
# set terminal windows 0 color solid butt enhanced background "#c0c0c0" size 1096,536
# set output
unset clip points
set clip one
unset clip two
set bar 1.000000 front
set border 31 front lt black linewidth 1.000 dashtype solid
set zdata 
set ydata 
set xdata 
set y2data 
set x2data 
set boxwidth
set style fill  empty border
set style rectangle back fc  bgnd fillstyle   solid 1.00 border lt -1
set style circle radius graph 0.02, first 0.00000, 0.00000 
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set dummy x, y
set format x "% h" 
set format y "% h" 
set format x2 "% h" 
set format y2 "% h" 
set format z "% h" 
set format cb "% h" 
set format r "% h" 
set timefmt "%d/%m/%y,%H:%M"
set angles radians
set tics back
unset grid
set raxis
set style parallel front  lt black linewidth 2.000 dashtype solid
set key title "" center
set key inside right top vertical Right noreverse enhanced autotitle nobox
set key noinvert samplen 4 spacing 1 width 0 height 0 
set key maxcolumns 0 maxrows 0
set key noopaque
unset label
unset arrow
set style increment default
unset style line
unset style arrow
set style histogram clustered gap 2 title textcolor lt -1
unset object
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set offsets 0, 0, 0, 0
set pointsize 1
set pointintervalbox 1
set encoding default
unset polar
unset parametric
unset decimalsign
unset micro
unset minussign
set view 90, 90, 1, 1
#########################
set samples 30, 30
set isosamples 10, 10
set surface 
unset contour
set cntrlabel  format '%8.3g' font '' start 5 interval 20
set mapping cartesian
set datafile separator whitespace
unset hidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels auto 5
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set style data points
set style function lines
unset xzeroaxis
unset yzeroaxis
unset zzeroaxis
unset x2zeroaxis
unset y2zeroaxis
set xyplane relative 0.5
set tics scale  1, 0.5, 1, 1, 1
set mxtics default
set mytics default
set mztics default
set mx2tics default
set my2tics default
set mcbtics default
set mrtics default
#set xtics border in scale 1,0.5 mirror norotate  autojustify
#set xtics  norangelimit autofreq 
set ytics border in scale 1,0.5 mirror norotate  autojustify
set ytics  norangelimit autofreq 
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics  norangelimit autofreq 
set zzeroaxis lt 5
set ztics axis
set ytics ("1" 1, "7" 7,  "11" 11, "13" 13, "17" 17, "19" 19 , "23" 23, "29" 29)
set ztics ("1" 1, "7" 7,  "11" 11, "13" 13, "17" 17, "19" 19 , "23" 23, "29" 29)
unset xtics
unset x2tics
unset y2tics
set cbtics border in scale 1,0.5 mirror norotate  autojustify
set cbtics  norangelimit autofreq 
set rtics axis in scale 1,0.5 nomirror norotate  autojustify
set rtics  norangelimit autofreq 
unset paxis 1 tics
unset paxis 2 tics
unset paxis 3 tics
unset paxis 4 tics
unset paxis 5 tics
unset paxis 6 tics
unset paxis 7 tics
set title "@0723xFAM.plt" 
set title  font "" norotate noenhanced
set timestamp bottom 
#set timestamp "" 
set timestamp  font "" norotate
show timestamp
set rrange [ * : * ] noreverse nowriteback
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set ticslevel 0
set xlabel "X is 0723" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ 0.00000 : 2.0000 ] noreverse nowriteback
set x2range [ * : * ] noreverse nowriteback
set ylabel "Y" 
set ylabel  font "" textcolor lt -1 rotate by -270
set y2label "" 
set y2label  font "" textcolor lt -1 rotate by -270
set yrange [ -2.00000 : 32.0000 ] noreverse nowriteback
set y2range [ * : * ] noreverse nowriteback
set zlabel "Z" 
set zlabel  font "" textcolor lt -1 norotate
set zrange [ -2.00000 : 32.0000 ] noreverse nowriteback


set cblabel "" 
set cblabel  font "" textcolor lt -1 rotate by -270
set cbrange [ * : * ] noreverse nowriteback
set paxis 1 range [ * : * ] noreverse nowriteback
set paxis 2 range [ * : * ] noreverse nowriteback
set paxis 3 range [ * : * ] noreverse nowriteback
set paxis 4 range [ * : * ] noreverse nowriteback
set paxis 5 range [ * : * ] noreverse nowriteback
set paxis 6 range [ * : * ] noreverse nowriteback
set paxis 7 range [ * : * ] noreverse nowriteback
set zero 1e-008
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1
set locale "English_United States.1252"
set pm3d explicit at s
set pm3d scansautomatic
set pm3d interpolate 1,1 flush begin noftriangles noborder corners2color mean
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB 
set palette rgbformulae 7, 5, 15
set colorbox default
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front  noinvert bdefault
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted

#
set key title "" center
set title "@0723xFAM.plt" noenhanced
set title  font "" norotate
set terminal windows title "@0723xFAM.plt" enhanced background rgb 'white'
#

set loadpath

set fontpath 
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
GNUTERM = "windows" 
##DDS
###

splot "work e 07x.txt" with points pointtype 7 pointsize 1 lc rgb "orange" , "work p 07x.txt" with points pointtype 7 pointsize 1 lc rgb "blue" , "work e 23x.txt" with points pointtype 7 pointsize 1 lc rgb "green" , "work p 23x.txt" with points pointtype 7 pointsize 1 lc rgb "red" , "work e 0723 overlay.txt" with points pointtype 1 pointsize 2 lc rgb "black" 
#    EOF
