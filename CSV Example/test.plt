# GNUPLOT SCRIPT
# By Connor Fricke (cd.fricke23@gmail.com), 7-Feb-2024
#
# Run this script from a Bash terminal with
# $ gnuplot test.plt
#
# This script will output the resulting plot as a PNG image with resolution 1920x1080p
######################################################################################

# CHOOSE TERMINAL FOR OUTPUT
# set terminal qt size 1920,1080          # cross-platform
# set terminal windows size 1920,1080     # should work on Microsoft Windows
# set terminal wxt size 1920,1080         # cross-platform
# set terminal png size 1920,1080         # must also set out (next line) to save results
# set out "plotting_results.png"

# create png to save results, note that we can specify the size, in pixels
set terminal png size 1920,1080
set out "plotting_results.png"

# format
set timestamp
set xlabel "Freq (GHz)"
set ylabel "Attenuation"
set title "Testing GNUPLOT"

# this is a CSV, so our delimiter needs to be set as a comma
set datafile separator ","

# Plot the file Payton gave me
plot "Power_per_f_0.5r_0.005p_28a14b26d.csv" using ($1):(log10($2)) title "Power Per Frequency: 0.5r, 0.005p"

pause -1 "Enter any key to quit"

