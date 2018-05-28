set term postscript color font "Helvetica,30" enhanced eps
set ylabel "{norm. Int. / a.u."
set xlabel '~{/Symbol n}{.4\~}_{} / cm^{-1}' 
#unset key
set key left top spacing .9 font ",18"
#set xtics 0,500
set xtics out nomirror
#set mxtics 5
#set ytics 0,1
set border lw 3
#set format x ""
#set format y "%.1f"
#set format y ""
set xrange [2600:2800]
#set yrange [0:1]
#set border 3

set output "comp_iCa2_dip_BEC.eps"

#p "spec-iCa2.ew" u ($1*219474.63):($2/652.904) w l ls 1 lc 7 title "AIMD, 300K", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/2layers/iCa2/freq/D2Ofreq/dipolecorrect/freqs_iCa2_2.dat" u 2:($4/9.479658) w i lw 1 lc 1 title "10 layers", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/3layers/iCa2/freq/D2O/dipole_correct/freq_iCa2_3.dat" u 2:($4/20.219171) w i lw 1 lc 2 title "15 layers", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/4layers/iCa2/freq/D2O/dipole_correct/freqs_iCa2_4.dat" u 2:($4/37.190746) w i lw 1 lc 3 title "20 layers", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/5layers/iCa2/freq_dip/freq_D2O_dip/freq_iCa2_D2O_5.dat" u 2:($4/59.983459) w i lw 1 lc 4 title "25 layers", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/2layers/born_effective_charges/iCa2/D2O/sticks.dat" u 1:($2/0.844331) w i lt 1 lc 8 title "10 layers BEC"
p "/und/sophia/bigger-cell_newcrystalcut/2x2cell/2layers/iCa2/freq/D2Ofreq/dipolecorrect/freqs_iCa2_2.dat" u 2:($4/9.479658) w p lw 1 lc 1 title "10 layers dip.", "/und/sophia/bigger-cell_newcrystalcut/2x2cell/2layers/born_effective_charges/iCa2/D2O/sticks.dat" u 1:($2/0.844331) w p lt 1 lc 8 title "10 layers BEC"
