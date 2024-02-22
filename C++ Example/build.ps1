# Powershell Script
# by Connor Fricke (cd.fricke23@gmail.com)
# ******************************************
# get time
Get-Date
# compile options
g++ wave_packets.cpp -o wave_packets.exe -std=c++11
# execute (stores data in wave_packets.dat)
.\wave_packets.exe
# call GNUPLOT on script file
gnuplot wave_packets.plt