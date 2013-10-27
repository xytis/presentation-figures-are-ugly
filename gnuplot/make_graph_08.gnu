reset

set terminal pdfcairo enhanced color solid font 'Verdana,10' size 4cm,3cm
set encoding utf8 

#Project colors.
load "colors.plt"

#set lmargin 5

#Axes
set border 31 ls 11 lw 2
set tics nomirror in scale 0.75 

set nokey
unset ytics
unset xtics

set yrange [0 : 200]
set xrange [0 : 36]

set output '../img/graph_08_bad.pdf'
plot  "data/05_bad_point"  with p ls 1 pt 7 ps 0.5, "data/05"  with p ls 2 pt 7 ps 0.5

set output '../img/graph_08_good.pdf'
plot  "data/05"  with p ls 1 pt 7 ps 0.5