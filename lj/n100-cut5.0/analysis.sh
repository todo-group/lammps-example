N=100
CUTOFF=5.0
RHO="0.001 0.010 0.100"
TEMP="0.75 0.80 0.85 0.90 0.95 1.00 1.10 1.20 1.30 1.40 1.50 1.60 1.70 1.80 1.90 2.00 3.00 4.00 5.00"

for rho in ${RHO}; do
  FILE="lj-n${N}-r${rho}-cut${CUTOFF}.dat"
  rm -f $FILE
  echo "# N = ${N}" > ${FILE}
  echo "# rho = ${rho}" >> ${FILE}
  echo "# cutoff = ${CUTOFF}" >> ${FILE}
  echo "# Temperature PotentialEnergy Pressure" >> ${FILE}
  for temp in ${TEMP}; do
    if [ -f out/ave.dens_${rho}_${temp}.out ]; then
      echo "Reading out/ave.dens_${rho}_${temp}.out"
      ./block_analysis.py -f out/ave.dens_${rho}_${temp}.out -b 10 -m 100000 2> /dev/null | tail -1 >> ${FILE}
    fi
  done
done
