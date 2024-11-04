function [yaprox] = szeregSin(x, Nmax)
%szeregSin wyznacza przyblizona wartosc sin(x)
%x - wektor argumentow
%Nmax - maksymalna liczba wyrazow rozwiniecia funcji

if nargin < 1 
 error('za mało argumentów');
elseif nargin == 1 
 Nmax = 9;
elseif nargin > 2
 error('za dużo argumentów');
end
mat = zeros(Nmax+1, length(x));
for k=0:Nmax
    mat(k+1,:) = ((-1)^k) * ((x.^(2*k+1))/factorial(2*k+1));
end
yaprox = sum(mat);
end