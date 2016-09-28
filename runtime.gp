reset
set ylabel 'time(sec)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][:10]'time.txt' using 2:xtic(1) with histogram title 'kernel mode', \
'' using ($0-0.06):($2+0.001):2 with labels title ' ', \
'' using 3:xtic(1) with histogram title 'user mode'  , \
'' using ($0+0.3):($3+0.0015):3 with labels title ' '
