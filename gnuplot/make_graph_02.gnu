reset

set terminal pdfcairo enhanced color solid font 'Verdana,10' size 9cm,6cm
set encoding utf8 

#Project colors.
load "colors.plt"

A(jw) = ({0,1}*jw/({0,1}*jw+p1)) * (1/(1+{0,1}*jw/p2))
p1 = 10
p2 = 10000
set dummy jw
set grid x y2
set key opaque center bottom tc rgb "#5C5C5C"
set border 31 ls 11 lw 2
set logscale xy
set log x2
unset log y2

set xrange [1.1 : 90000.0]
set x2range [1.1 : 90000.0]
set xlabel "jw (radianai)" tc rgb "#5C5C5C"
set ylabel "A(jw) amplitudė" tc rgb "#5C5C5C"
set y2label "A(jw) fazė (laipsniai)" tc rgb "#5C5C5C"
set ytics nomirror
set y2tics
set tics out
set autoscale  y
set autoscale y2

set output '../img/graph_02.pdf'
plot abs(A(jw)) axes x1y1 ls 1 lw 3, 180./pi*arg(A(jw)) axes x2y2 ls 2 lw 3
 
