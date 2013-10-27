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
set yrange [0 : 144]

#Bad part
set boxwidth 0.5
set style fill solid

set output '../img/graph_05_bad.pdf'
plot  "data/05" using 2:xtic(1) with boxes ls 1

#Distribution part
unset xtics
set boxwidth 0.5
set style fill solid

set yrange [0 : 1]

set output '../img/graph_05_distribution.pdf'
plot  "data/gaussian" using 2:xtic(1) with boxes ls 1

#Feature part

set encoding utf8
set yrange [-0.1:1]
set xrange [0:1.25]

set arrow from graph 0.23,0.45 to graph 0.23,0.55 size screen 0.025,15,60 \
    filled ls 1 lw 2

set arrow from graph 0.28,0.88 to graph 0.28,0.78 size screen 0.025,15,60 \
    filled ls 2 lw 2

set output "../img/graph_05_features.pdf"
plot  "data/diff_ad0.1.dat" w l ls 1 lw 3, \
      "data/nodiff_ad0.1.dat" w l ls 2 lw 3

unset arrow

#Good part
set xtics ("4" 4, "32" 32)
#set ytics ("0" 0, "64" 64, "128" 128)

set xrange [0 : 36]
set yrange [0 : 144]

set output '../img/graph_05_good.pdf'
plot  "data/05"  with lp ls 1 pt 7 ps 0.3
 
#Evolution part
unset xtics
set xrange [0 : 36]

set output '../img/graph_05_evolution.pdf'
plot  "data/05"  with lp ls 1 pt 7 ps 0.3


#Pattern part

xmin = 135
xmax = 200
ymin = 7
ymax = 9.5

set xrange [xmin:xmax]
set yrange [ymin:ymax]

set output '../img/graph_05_pattern.pdf'
f(x) = a*x + b
fit f(x) "data/06" u 1:2  via a, b

plot  "data/06" using 1:2 with p ls 2 pt 7 ps 0.3, f(x) with l ls 1 lw 3