# lammps-example

* lj: Lenard-Jonesガスのエネルギーと圧力。ポテンシャルのカットオフを変えて収束を確認
  * Ref: https://www.nist.gov/mml/csd/informatics/lammps-md-equation-state-pressure-vs-density-linear-force-shifted-potential-25s
  * 変更点: 粒子数 10000→100、ポテンシャル lj/sf → lj/cut
