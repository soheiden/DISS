set term postscript color font "Helvetica,30" enhanced eps
set ylabel "{{/Symbol m}^2 [a.u.]"
set xlabel '~{/Symbol n}{.4\~}_{} / cm^{-1}' 
#unset key
#set key left top #spacing .9 font ",22"
set key left top
#set xtics 0,500
set xtics out nomirror
#set mxtics 5
#set ytics 0,1
set border lw 3
#set format x ""
#set format y "%.1f"
#set format y ""
#set xrange [2600:2800]
#set yrange [0:1]
#set border 3

set output "comp_O-I_O-II-25.eps"

p "/und/sophia/bigger-cell_newcrystalcut/2x2cell/5layers/surf_freq/dipole_correct/freq_surf_25layer.dat" u 1:($2/58.015636) w i lc black lw 4 title "O-I", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/O-II-terminated/25layers/clean_surf/freq/freq_O-II-25.dat" u 2:($4/0.405555) w i lw 4 lc 7 title "O-II"
