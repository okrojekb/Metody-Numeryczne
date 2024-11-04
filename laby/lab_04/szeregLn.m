function [Y] = szeregLn(x,Nmax)
%szeregLn wyznacza rozwiniecie funkcji ln(x+1) w szereg potegowy
%   x - wektor argumentow
%   Nmax - maksymalna liczba wyrazow rozwiniecia funkcji w szereg
Y = zeros(Nmax,length(x));
Y(1,:) = x;
for n=1:(Nmax-1)
    Y((n+1),:) = Y(n,:) + (((-1)^n)*(x.^(n+1)))/factorial(n+1);
end
end