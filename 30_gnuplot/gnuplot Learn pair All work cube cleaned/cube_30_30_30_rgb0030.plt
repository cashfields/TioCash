#!/gnuplot
#
#
#       G N U P L O T
#       Version 5.0 patchlevel 6    last modified 2017-03-18
#
#       Copyright (C) 1986-1993, 1998, 2004, 2007-2017
#       Thomas Williams, Colin Kelley and many others
#
#       gnuplot home:     http://www.gnuplot.info
#       faq, bugs, etc:   type "help FAQ"
#       immediate help:   type "help"  (plot window: hit 'h')
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
set view 110, 290, 1, 1
set samples 100, 100
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
set xtics border in scale 1,0.5 mirror norotate  autojustify
set xtics  norangelimit autofreq
set ytics border in scale 1,0.5 mirror norotate  autojustify
set ytics  norangelimit autofreq
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics  norangelimit autofreq
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
set title "cube_30_30_30.plt"
set title  font "" norotate noenhanced
set timestamp bottom
set timestamp ""
set timestamp  font "" norotate
set rrange [ * : * ] noreverse nowriteback
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set xlabel "X"
set xlabel  font "" textcolor lt -1 norotate
set x2label ""
set x2label  font "" textcolor lt -1 norotate
set xrange [ 0.00000 : 31.0000 ] noreverse nowriteback
set x2range [ * : * ] noreverse nowriteback
set ylabel "Y"
set ylabel  font "" textcolor lt -1 rotate by -270
set y2label ""
set y2label  font "" textcolor lt -1 rotate by -270
set yrange [ 0.00000 : 31.0000 ] noreverse nowriteback
set y2range [ * : * ] noreverse nowriteback
set zlabel "Z"
set zlabel  font "" textcolor lt -1 norotate
set zrange [ 0.00000 : 31.0000 ] noreverse nowriteback
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
unset colorbox
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted

#set grid
#set label 1 "These examples require no extra fonts:" at 1 1, 0 left norotate back textcolor lt 3 nopoint offset character 0, 0, 0

#
# Test clipping and placement in the presence of an inverted axis range
#
#set obj 4 rect at -4,0 size 3,1
set label 4 at  screen .010 , screen .980  \
"Cut 1 = 01 29 \nCut 2 = 07 23\nCut 3 = 11 19\nCut 4 = 13 17 \n\nCut 5 = Red + \n\n\\
Cut 6 = 01 29 Red\nCut 7 = 07 23 Red\nCut 8 = 11 19 Red\nCut 9 = 13 17 Red \
" left 

#
# Illustrate using character widths to put a box around a label
#
#LABEL = "Label in a box"
#set obj 10 rect at -3,-4 size char strlen(LABEL), char 1 
#set obj 10 fillstyle empty border -1 front
#set label 10 at 0,0,0  LABEL front center

#set label "V_0 = 10\n E = 1"  #this is the bit I want to reposition
#set arrow from -2,-2000 to -2,2000 nohead size screen 0.025,30,45 ls 1
#



#
set key title "" center
set title "cube_30_30_30_rgb0030.plt" noenhanced
set title  font "" norotate
set terminal windows title "cube_30_30_30_rgb0030.plt" enhanced background rgb 'gray'
#

set loadpath
set fontpath
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
GNUTERM = "windows"
x = 0.0



## Last datafile plotted: "cube_30_30_30.txt"
splot "cube_30_30_30_rgb0129.txt" with points pointtype 7 pointsize  1 palette , "cube_30_30_30_rgb0723.txt" with points pointtype 7 pointsize  1 palette , "cube_30_30_30_rgb1119.txt" with points pointtype 7 pointsize  1 palette , "cube_30_30_30_rgb1317.txt" with points pointtype 7 pointsize  1 palette , "cube_30_30_30_rgb0030.txt" with points pointtype 1 pointsize  1 lc rgb "red" , "cube_30_30_30_rgb_1_3_7_9_Red.txt" with points pointtype 7 pointsize  1 lc rgb "red" 
#    EOF
