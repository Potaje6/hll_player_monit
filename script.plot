set terminal pngcairo size width,height enhanced font 'Verdana,8'
set datafile separator ","
set title titulo
set xdata time
set timefmt '%Y/%m/%d-%H:%M'
set format x "%d-%H:%M"
set rmargin 5
set yrange ["0":"100"]
set xlabel "Time"
set ylabel "Players"
set grid
set xzeroaxis linetype 3 linewidth 1.5
set style line 1 linetype 1 linecolor rgb "green" linewidth 1.000
set style line 2 linetype 1 linecolor rgb "red" linewidth 1.000
set style line 3 linetype 1 linecolor rgb "blue" linewidth 1.000
#set key left top
#set key outside
set xtics font ", 7"
set term png
#set output title.png
set xrange [time(0) - 3*24*60*60:]
set output  'Servers_graph.png'
set style data linespoints
#plot filename1 using 1:($2 <= 0?$2:1/0) with linespoints ls 1 title "Server1",\
#filename2 using 1:($2 <= 0?1/0:$2) with linespoints ls 2 title "Server2"
#plot filename1 using 1:2 with linespoints ls 1 title "Server1",\
#filename2 using 1:2 with linespoints ls 2 title "Server2"
plot filename1 using 1:2 with lines ls 1 title "Server1",\
filename2 using 1:2 with lines ls 2 title "Server2",\
filename3 using 1:2 with lines ls 3 title "Server3"
