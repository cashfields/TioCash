set terminal pdf color
set output 'testgraph-gnuplottex-fig1.pdf'
    unset key
    set samples 10000
    set format '%g'
    set xlabel "Avg. No. of demand duration (slot) "
    set ylabel "Acceptence rate (%)"
    set xrange [-6:6]
    set yrange [0:0.41]
    f(n,x) = gamma(.5*(n+1))/(sqrt(n*pi)*gamma(.5*n))*((1+x**2/n)**(-.5*(n+1)))
    plot for[i=1:20] f(i,x)
