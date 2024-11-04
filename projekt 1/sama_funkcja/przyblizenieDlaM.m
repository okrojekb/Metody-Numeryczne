function [Sm,X2m] = przyblizenieDlaM(Xm,f, Hm)
%przyblizenieDlaM oblicza całkę z funkcji f na [a,b] złożoną kwadraturą
%prostokątów dzieląc [a,b] na m podprzedziałow
%   Xm - końce podpodziałów
%   f - funkcja, którą całkujemy
%   Hm - długośc podprzedziału
% funkcja zwraca obliczoną wartość całki dla m oraz wektor granic
% podprzedziałów przedziału [a;b] dla 2m

Am = Xm - (1/2)*Hm;
Pm = feval(f, Am);
Sm = sum(Pm)*Hm;
X2m = [Xm, Am];
Sm;X2m;
end