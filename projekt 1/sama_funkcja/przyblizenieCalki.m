function [w] = przyblizenieCalki(a, b, f, e)
%przyblizenieCalki oblicza całkę z funkcji f na [a,b] złożoną kwadraturą 
% prostokątów (z punktem środkowym)z dokładnością e
%   [a,b] - przedział całkowania
%   f - funkcja, którą całkujemy
%   e - dokładność
% funkcja zwraca obliczoną przybliżoną wartość całki

Xm = [b];
m=1;
[Sm2, Xm] = przyblizenieDlaM(Xm, f, (b-a));
m=2;
[Sm, Xm] = przyblizenieDlaM(Xm, f, (b-a)/2);
while abs(Sm - Sm2)>e
    m=m*2;
    Sm2 = Sm;
    [Sm, Xm] = przyblizenieDlaM(Xm, f, (b-a)/m);
end
w = Sm;
end