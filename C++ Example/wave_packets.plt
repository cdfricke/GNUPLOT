# GNUPLOT Script for plotting of results from wave_packets.cpp
# by Connor Fricke (cd.fricke23@gmail.com), 8-Feb-2024
#
# This script can be run from a Bash or Powershell terminal. I recommend using the --persist 
# option in Bash unless using the png terminal, in which case it is not necessary.
#
# $ gnuplot {--persist} "wave_packets.plt"
######################################################################################

# CHOOSE TERMINAL FOR OUTPUT
# set terminal qt size 1920,1080          # cross-platform
# set terminal windows size 1920,1080     # should work on Microsoft Windows
# set terminal wxt size 1920,1080         # cross-platform
# set terminal png size 1920,1080         # must also set out (next line) to save results
# set out "wave_packets.png"

# CURRENT CHOICE:
set terminal wxt size 1920,1080

# format plotting
set timestamp
set title "Wave Packet via C++"
set xlabel "x"
set ylabel "State"
set yrange [-4:4]

# plot!
plot "wave_packets.dat" using ($1):($2)

pause -1 "Hit any key to quit"