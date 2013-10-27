reset

set terminal pdfcairo enhanced color solid font 'Verdana,10' size 4cm,3cm
set encoding utf8 

#Project colors.
load "colors.plt"

set lmargin 4

#Axes
set border 31 ls 11 lw 2
set tics nomirror in scale 0.75 

set nokey
unset xtics
set ytics  mirror

set xrange [0 : 3]

f(x) = x
g(x) = exp(x)

set ytics 1
set yrange [0:3]

set label 2 'f(x) = x' at graph 0.05,0.9 left tc ls 1 

set output '../img/graph_09_line_line.pdf'
plot  f(x)  with l ls 1 lw 3

set ytics 5
set yrange [0:20]

set label 2 'g(x) = e^{x}' at graph 0.05,0.9 left tc ls 1 

set output '../img/graph_09_line_exp.pdf'
plot  g(x)  with l ls 1 lw 3

set log y

set ytics autofreq
set yrange [0.1:10]

set label 2 'f(x) = x' at graph 0.05,0.9 left tc ls 1 

set output '../img/graph_09_log_line.pdf'
plot  f(x)  with l ls 1 lw 3

set ytics autofreq
set yrange [1:100]

set label 2 'g(x) = e^{x}' at graph 0.05,0.9 left tc ls 1 

set output '../img/graph_09_log_exp.pdf'
plot  g(x)  with l ls 1 lw 3