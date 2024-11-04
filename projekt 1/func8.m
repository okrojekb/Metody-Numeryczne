function [y] = func8(x)
%func8 wyznacza wartości funkcji f(x) =ln(x) * sin(1/x)
%   x - wektor argumentów
y = log(x).*sin(1./x);
end