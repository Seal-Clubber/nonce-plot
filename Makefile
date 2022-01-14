nonce.png: nonce.lst
	gnuplot -e " \
		set terminal png size 1920,1080 font 'VL P Gothic,18'; \
		set output '$@'; \
		set datafile separator ','; \
		set title 'Nonce Distribution Ravencoin'; \
		set xlabel 'Block Height'; \
		set ylabel 'Nonce'; \
		set grid xtics ytics mxtics mytics; \
		set nokey; \
		plot '$<' using 1:2 with points pt 7 ps 0.1 lc rgb 'dark-red'; \
	"
