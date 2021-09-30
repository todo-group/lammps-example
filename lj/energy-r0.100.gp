set key bottom
set grid
set title 'N=100, rho=0.100'
set xlabel 'T'
set ylabel 'potential energy per particle'
plot \
"n100-cut2.5/lj-n100-r0.100-cut2.5.dat" using 1:3:4 with errorlines title 'cutoff=2.5', \
"n100-cut3.5/lj-n100-r0.100-cut3.5.dat" using 1:3:4 with errorlines title '3.5', \
"n100-cut5.0/lj-n100-r0.100-cut5.0.dat" using 1:3:4 with errorlines title '5.0', \
"n100-cut8.0/lj-n100-r0.100-cut8.0.dat" using 1:3:4 with errorlines title '8.0'
