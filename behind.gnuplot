set xdata time
set title "npmdeps.kemitchell.com"
set timefmt "%Y-%m-%dT%H:%M:%S-0700"
set terminal png size 1000, 750
set output "behind.png"
set autoscale y
set xrange [ time(0) - (1*86400) : ] # 86400 seconds is 1 day
set autoscale xmin
set format x "%m/%d\n%H:%M"
plot [:][:] 'behind.log' using 1:2 title "Updates behind" with lines
