set term postscript color font "Helvetica,30" enhanced eps
set ylabel "{norm. Int. / a.u."
set xlabel '~{/Symbol n}{.4\~}_{} / cm^{-1}' 
#unset key
set key right top spacing .9 font ",18"
set xtics 0,500
set xtics out nomirror
set mxtics 5
#set ytics 0,1
set border lw 3
#set format x ""
#set format y "%.1f"
#set format y ""
set xrange [0:3000]
set yrange [0:1]
#set border 3

set output "comp_iCb2_all.eps"

p "spec-iCb2.ew" u ($1*219474.63):($2/738.673) w l ls 1 lc 7 title "AIMD, 300K" , "/und/sophia/bigger-cell_newcrystalcut/2x2cell/2layers/iCb2/freq/D2Ofreq/dipolecorrect/freqs_iCb2_2.dat" u 2:($4/5.003757) w i lw 1 lc 1 title "10 layers", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/3layers/iCb2/freq/D2O/dipole_correct/freq_iCb2.dat" u 2:($4/6.262734) w i lw 1 lc 2 title "15 layers", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/4layers/iCb2/freq/D2O/dipole_correct/freqs_iCb2_4.dat" u 2:($4/16.621886) w i lw 1 lc 3 title "20 layers", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/5layers/iCb2/freq_dip/freq_D2O_dip/freq_iCb2_D2O_5.dat" u 2:($4/40.049633) w i lw 1 lc 4 title "25 layers", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/2layers/born_effective_charges/iCb2/D2O/sticks.dat" u 1:($2/0.553717) w i lt 1 lc 8 title "10 layers BEC"
