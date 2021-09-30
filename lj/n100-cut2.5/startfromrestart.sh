NP=8
RHO="0.001 0.010 0.100"
TEMP="0.75 0.80 0.85 0.90 0.95 1.00 1.10 1.20 1.30 1.40 1.50 1.60 1.70 1.80 1.90 2.00 3.00 4.00 5.00"

for rho in ${RHO}; do
  for temp in ${TEMP}; do
    mpirun -np ${NP} lammps -in LJ.NVT.startfromrestart -var rho ${rho} -var temp ${temp} -log log/startfromrestart-${rho}-${temp}.log
  done
done
