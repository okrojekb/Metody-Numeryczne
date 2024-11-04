function [] = wielowykres(f,a,b,n)
%wielowykres narysuje wykres funkcji f, jej wielomianu interpolacyjnego i
%zaznaczy wezly
%   f - funkcja interpolowana
%   a,b - konce przedzialu
%   n - maksymalny stopien wielomianu interpolacyjnego


x = linspace(a,b,n);

xi = linspace(a,b,n*10);

y = f(xi);

c = ilorazr(x, f(x));

limmin = 2*min(y)-max(y);

limmax = 2*max(y)-min(y);

figure(), plot(xi, y, '-r','Marker','-','MarkerSize',10, x, myhorner(c, x, x), "-o"), '-b','Marker','o','MarkerSize',3, axis([a b limmin limmax]);

end