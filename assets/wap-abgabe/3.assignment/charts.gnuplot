set datafile separator ','

set title "Ordentliche Erstzugelassene Studierende nach Studium"
set xtics(2016,2017,2018)
set xrange [2015.9:2018.1]
set yrange [0:300]
set xlabel "Jahr"
# set key left top
set key right top

set term pngcairo
set output "first-semester.png"




plot "first-semester-2016-2019.csv" using 1:2 with line title 'Recht und Wirtschaft' linetype rgb 'red' lw 2, \
     "first-semester-2016-2019.csv" using 1:3 with line title 'Informatik' linetype rgb 'blue' lw 2, \
     "first-semester-2016-2019.csv" using 1:4 with line title 'Mathematik' linetype rgb 'orange' lw 2, \
     "first-semester-2016-2019.csv" using 1:5 with line title 'Psychologie' linetype rgb 'green' lw 2


set title "Abgeschlossene Studien"
# set key left top
set yrange [0:200]
set key at graph 0.1, 0.9

set term pngcairo
set output "graduations.png"

gridcolor = "#777777"
set grid ytics linewidth 3 linetype 0 lc rgb gridcolor
set grid xtics linewidth 3 linetype 0 lc rgb gridcolor

set pointsize 2.0

set bmargin 8
set key outside center bottom
set xlabel "Jahr"

plot "graduations-2016-2019.csv" using 1:2 with points pointtype 1 lw 2 lc rgb 'red' title 'Recht und Wirtschaft', \
     "graduations-2016-2019.csv" using 1:3 with points pointtype 1 lw 2 lc rgb 'blue' title 'Informatik', \
     "graduations-2016-2019.csv" using 1:4 with points pointtype 1 lw 2 lc rgb 'orange' title 'Mathematik', \
     "graduations-2016-2019.csv" using 1:5 with points pointtype 1 lw 2 lc rgb 'green' title 'Psychologie'
unset bmargin


set title "Abgeschlossene / Erstsemestrige im selben Jahr"
bxwdth = 0.7/4.0
set output "factor.png"
set xtics scale 0
set xlabel "Jahr"
set ylabel "Verhältnis [%]"
set yrange [0:140]
set xrange [2015.8:2018.8]
set key inside center top
set style fill solid border -1
set boxwidth bxwdth relative
plot 'first-div-grad.csv' using 1:2 title 'Recht und Wirtschaft' with boxes lc rgb 'red', \
     'first-div-grad.csv' using ($1+1.2*bxwdth):3 title 'Informatik' with boxes lc rgb 'blue', \
     'first-div-grad.csv' using ($1+2.4*bxwdth):4 title 'Mathematik' with boxes lc rgb 'orange', \
     'first-div-grad.csv' using ($1+3.6*bxwdth):5 title 'Psychologie' with boxes lc rgb 'green'
