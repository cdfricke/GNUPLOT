# ******* GNUPLOT SCRIPT *******
# Programmmer: Connor Fricke
# File:
# Latest Revision:
# Desc:
# ******************************

# SET TERMINAL
set terminal png size 1920,1080
set out '<filename>.png'

# LABELING
set title 'title' font 'mono, 22'
set xlabel 'xlabel' font 'mono, 20'
set ylabel 'ylabel' font 'mono, 20'

# FORMATTING
set key font 'mono, 16'
set xtics font 'mono, 14' nomirror
set ytics font 'mono, 14' nomirror
set size ratio 0.618
set lmargin 10
set rmargin 10

# PLOTTING
set xrange [0:10]
set yrange [-2:2]
plot sin(x) with linesp lc black lw 2 pt 6 notitle
