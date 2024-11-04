function [y] = func10(x)
%func10 wyznacza wartości funkcji f(x) = ln(1/x) * sin(1/x)
%   x - wektor argumentów
y = log(1./x).*sin(1./x);
end