set term png enhanced font 'LiberationSans-Regular.ttf' 12 background "#ffffff"
set output "shack-votes.png"
set xlabel "Datum"
set timefmt "%s"
set format x "%d.%m.%Y %H:%M"
set xdata time
set xtics rotate
set ylabel "Stimmen"
set yrange [0:]
set y2label "Platz"
set y2range [1:]
set y2tics
set key left
set grid
plot "shack-votes.csv" using (timecolumn(1)+60*60*2):2 title 'Stimmen' with lines axes x1y1, \
  "shack-votes.csv" using (timecolumn(1)+60*60*2):3 title 'Platz' with lines axes x1y2, \
  200 title '' with dots axes x1y2

