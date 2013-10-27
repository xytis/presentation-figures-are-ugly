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

#Crowded part
set grid x y lc rgb '#909090'
set ytics 0.3
set xtics rotate 90 7 

xmin = 135
xmax = 200
ymin = 7
ymax = 9.5

set xrange [xmin:xmax]
set yrange [ymin:ymax]

set output '../img/graph_06_crowded.pdf'
plot  "data/06" using 1:2 with p ls 1 pt 7 ps 0.3

#Errors part
unset grid
unset ytics
unset xtics

set output '../img/graph_06_whiskers.pdf'
plot  "data/06" using 1:2:3 with errorbars ls 1 pt 7 ps 0.3
 
set output '../img/graph_06_no_fit.pdf'
plot  "data/06" using 1:2 with lp ls 1 pt 7 ps 0.3

set output '../img/graph_06_with_fit.pdf'
f(x) = a*x + b
fit f(x) "data/06" u 1:2  via a, b

# get the relation of x- and y-range
dx = xmax-xmin
dy = ymax-ymin
s1 = dx/dy
# get the ratio of the axes (because we do not use set size ratio due
# to the log scale of the y-axis)
s2 = 3.1/4

# helper function for getting the rotation angle of the labels in degree
deg(x) = x/pi*180.0
r(x) = deg(atan(s1*s2*x))
ti = sprintf("%.2fx+%.2f", a, b)

set label 2 ti at 160,8.2   rotate by r(a) center tc ls 1

plot  "data/06" using 1:2 with p ls 2 pt 7 ps 0.3, f(x) with l ls 1 lw 3