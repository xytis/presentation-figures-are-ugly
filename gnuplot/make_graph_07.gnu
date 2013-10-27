reset

set terminal pdfcairo enhanced color solid font 'Verdana,10' size 4cm,3.5cm
set encoding utf8 

#Project colors.
load "colors.plt"

#set lmargin 5
set bmargin 3

#Axes
set border 31 ls 11 lw 2
set tics nomirror in scale 0.75 

set nokey
unset ytics

set yrange [-0.1:1]
ttr = 0.0173
set xrange [0:1.25 * ttr]

set xlabel "t, ms" tc rgb "#5C5C5C"

set output "../img/graph_07_bad.pdf"
plot  "data/diff_ad0.1.dat" u ($1 * ttr):($2) w l ls 1 lw 3, \
      "data/nodiff_ad0.1.dat" u ($1 * ttr):($2) w l ls 2 lw 3


set xrange [0:1.25]

set xtics 0.5

set xlabel "t/t_{tr}" tc rgb "#5C5C5C"

set output "../img/graph_07_good.pdf"
plot  "data/diff_ad0.1.dat" u ($1):($2) w l ls 1 lw 3, \
      "data/nodiff_ad0.1.dat" u ($1):($2) w l ls 2 lw 3
