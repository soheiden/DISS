set term postscript color font "Helvetica,30" enhanced eps
set ylabel "I_{/Symbol m}                           I_{BEC}"
set xlabel '~{/Symbol n}{.4\~}_{} / cm^{-1}' 
#unset key
set key right top 
set xtics 0,200
set xtics out nomirror
set mxtics 4
set ytics -0.4,0.2
set border lw 3
#set format x ""
#set format y "%.1f"
#set format y ""
set xrange [1650:3000]
set yrange [-0.4:1.0]
#set border 3
set zeroaxis lt 1 lc black

set output "comp_bec-dip_Cb2_OD.eps"

p "/und/sophia/bigger-cell_newcrystalcut/2x2cell/2layers/phonons+most_stable/gnuplot/D2O/freqs_Cb2_2.dat" u 1:(-$2/4.527259) w impulses lw 4 lc black title "dipole model", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/2layers/born_effective_charges/Cb2/D2O/sticks.dat" u 1:($2/0.763427) w i lt 1 lw 4 lc 7 title "BEC"
