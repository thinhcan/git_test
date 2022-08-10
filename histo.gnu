reset

set title "Histogram of the interval value with x = 100000ns"
set xlabel "Sample"
set ylabel "Frequency"
#set output "sinx.png"
max = 100000. #max value
min = 0. #min value
width = (max-min)/1000

hist(x,width) = width*floor(x/width)+width/2.0

set xrange [min:max]
set yrange [0:1000]

plot "time_and_interval.txt" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle

