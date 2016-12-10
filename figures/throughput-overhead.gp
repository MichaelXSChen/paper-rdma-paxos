set terminal postscript eps enhanced "NimbusSanL-Regu, 24" fontfile "/usr/share/texlive/texmf-dist/fonts/type1/urw/helvetic/uhvr8a.pfb"

set border 3

set style data histogram
set style histogram cluster gap 1
set key left top

set xrange[-0.75:6]
set yrange [0:400]

set xtics nomirror
set ytics nomirror

set ylabel "Throughput Overhead (%)" 


set xtics font ",18"
set xtics ("Libpaxos" 0, "Zookeeper" 1, "Crane" 2, "S-Paxos" 3, "DARE" 4, "APUS" 5)
set ytics ("0" 0, "50" 50,  "100" 100,  "150" 150,  "200" 200,  "250" 250,  "300" 300,  "350" 350,  "400" 400)



#set boxwidth 0.25 absolute
plot 'throughput-overhead.dat' \
using 2 t "1" fs pattern 2, '' \
using 3 t "6" fs pattern 2, '' \
using 4 t "12" fs solid 0.5, '' \
using 5 t "18" fs pattern 1, '' \
using 6 t "24" fs pattern 1

