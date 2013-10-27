reset

set terminal pdfcairo enhanced color solid font 'Verdana,10' size 6cm,4cm
set encoding utf8 

#Project colors.
load "colors.plt"

set output '../img/graph_03.pdf'

set lmargin 7
set rmargin 7
set bmargin 3

U(x) = sin(x*pi)
I(x) = cos(x*pi)

#Axes
set noborder
set notics
set zeroaxis ls 11 lw 2
#set tics nomirror out scale 0.75

set arrow from graph 1,0.5 to graph 1.05,0.5 size screen 0.025,15,60 \
    filled ls 11 lw 2
set arrow from graph 0,1 to graph 0,1.05 size screen 0.025,15,60 \
    filled ls 11 lw 2

set yrange[-1.2 : 1.2]
set xrange[0 : 2]

#Labels
set nokey
set label 2 'I(t)'         at 0.45,0.45     rotate by -cos(0.45*pi)*360 center tc ls 1 
set label 3 'U(t)'         at 0.95,0.45     rotate by -cos(0.45*pi)*360 center tc ls 2

set autoscale  y

plot I(x) ls 1 lw 3, U(x) ls 2 lw 3
 
