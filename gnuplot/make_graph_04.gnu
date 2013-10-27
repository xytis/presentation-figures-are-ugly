reset

set terminal pdfcairo enhanced color solid font 'Verdana,10' size 6cm,4cm
set encoding utf8 

#Project colors.
load "colors.plt"

set output '../img/graph_04.pdf'

set lmargin 7
set rmargin 7
set bmargin 3

#Axes
set border 31 ls 11 lw 2
set zeroaxis ls 11 lw 1
set tics nomirror in scale 0.75 
set ytics 40
set xtics 0.2

set yrange [-95 : 95]
set xrange [-0.5 : 0.5]

#Labels
set nokey
set xlabel "B, T" tc rgb "#5C5C5C"
set ylabel "U_h, mV" tc rgb "#5C5C5C"


plot  "data/04" notitle with p ls 1 pt 7 ps 0.3
 
