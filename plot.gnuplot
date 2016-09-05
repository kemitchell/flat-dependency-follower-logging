set xdata time
set title "npmdeps.kemitchell.com"
set timefmt "%Y-%m-%dT%H:%M:%S-0700"
set terminal png size 1000, 500
set output "log.png"
set yrange [ 0 : ]
set xrange [ time(0) - (1*86400) : ] # 86400 seconds is 1 day
set format x "%m/%d\n%H:%M"
plot [:][:] 'log' using 1:2 title "Updates behind" with lines
