function [W,Z] = pochodnaTable(x,f,pp,pd,n)
%pochodnaTable wyznacza zmiane wartosci pochodnej przyblizonej na podstawie
%ilorazu roznicowego
% x - wartosc argumentu funkcji
% f - funkcja rozniczkowalna
% pd - dokladna pochodna f
% pp - przyblizona pochodna f
% n - wykladnik w wyrazeniu h = 2^n

% W
x_1 = pi/6;
h = 2.^n;
W = zeros(length(h), 3);
W(:,1) = n;
a = pd(x_1);
W(:,2) = repmat(a,1,length(h));
W(:,3) = pp(x_1, f, h);

% Z
n_1 = -12;
h = 2^n_1;
Z = zeros(length(x), 3);
Z(:,1) = x;
Z(:,2) = pd(x);
Z(:,3) = pp(x, f, h);



end