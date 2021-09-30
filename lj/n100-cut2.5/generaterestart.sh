NP=8
RHO="0.001 0.010 0.100"

mkdir -p log out restart

for rho in ${RHO}; do
  mpirun -np ${NP} lammps -in LJ.NVT.generaterestart -var rho ${rho} -log log/generaterestart-${rho}.log
done
