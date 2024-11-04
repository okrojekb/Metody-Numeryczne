function [] = szeregLnPlot(x,Nmax)
%szeregLnPlot tworzy wykresy funkcji ln(x+1) i jej przyblizen
%  x - wektor argumentow
%  Nmax - maksymalna liczba wyrazow rozwiniecia funkcji w szereg
A = szeregLn(x, Nmax);
z = linspace(1/2,3, Nmax);
z1 = repmat(z,length(x),1);
figure(), plot3(x, log(1+x), zeros(1, length(x)), "b-", x, A', z1, "--"), title("funkcja f = ln(1+x) i jej przyblizenia"), xlabel("wartosci x"), ylabel("y = ln(1+x)"), zlabel("kolejne wykresy"), grid on;
end