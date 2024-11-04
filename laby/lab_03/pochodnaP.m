function [pochodna] = pochodnaP(x,f,h)
%pochodnaP wyznacza wartosc pochodnej przyblizonej na podstawie
%ilorazu roznicowego
%  f - funkcja
% x - argument
X = repmat(x',1,length(h));
H = repmat(h,length(x),1);
X_1 = X+H;
X_2 = X-H;

pochodna = (f(X_1) - f(X_2))./(2*h);

end