F=ones(n,m); % n и m размерность скользящей апертуры

Lser=filter2(F,Lroshyrena,'same')/(n*m);