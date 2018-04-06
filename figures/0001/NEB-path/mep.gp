set term postscript colour font "Helvetica,30" enhanced eps 
set ylabel "{rel. Energy [eV]}"
set xlabel "{Image}"
unset key
#set xtics 0,5
#set ytics 0,1
set border lw 3
#set format x ""
#set format y "%.1f"
#set format y ""
#set xrange [-1:37]
#set yrange [0:2.05]
#set border 3

set style line 1 lt 1 lw 4 lc 1
set output "mep.eps"
plot "mep_norm.dat" w linespoints ls 1 ps 4

