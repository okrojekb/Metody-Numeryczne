function [] = porownajWykresBledu(a1,b1,f,a2,b2, dokladna1, dokladna2)
%porownajWykresBledu rysuje wykres, na którym są błędy względne
%przybliżania całki funkcji f po przedziałach [a1;b1] i [a2;b2] w
%zależności od m
%   [a1,b1] i [a2;b2] - przedziały całkowania
%   f - funkcja, którą całkujemy
%   dokladna1 i dokladna2 - dokladne wartości całki dla odpowiednich
%   przedziałów

[S1, M1] = wszystkiePrzyblizeniaDoM(a1,b1,f,10^-5);
maxPotega1 = log2(M1);
m = 2.^[0:maxPotega1];
[S2, M2] = wszystkiePrzyblizeniaDoM(a2,b2,f,10^-8);
maxPotega2 = log2(M2);
MP = min(maxPotega2, maxPotega1);
m = 2.^[0:MP];
S1 = S1(1:MP+1);
S2 = S2(1:MP+1);

BladW1 = abs((S1-dokladna1)/dokladna1);
BladW2 = abs((S2-dokladna2)/dokladna2);

figure(), plot(m, BladW1, "r-o", m, BladW2, "b-o"),
legend('błąd względny na [0,1]', 'błąd względny na [5,6]','Location','best');

end