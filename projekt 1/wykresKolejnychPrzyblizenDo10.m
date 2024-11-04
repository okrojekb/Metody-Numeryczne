function [] = wykresKolejnychPrzyblizenDo10(a, b, f, e, dokladnaWartosc)
%wykresKolejnychPrzyblizenDo10 rysuje wykres przybliżen dla kolejnych m,
%m<=1024
%   [a,b] - przedział całkowania
%   f - funkcja, którą całkujemy
%   e - dokładność
%   dokladnaWartosc - dokładna wartość całki
mMax = 10;
[S, M] = wszystkiePrzyblizeniaDoM(a,b,f,e,2^mMax);
m = 2.^[0:mMax];
if nargin == 4 
 figure(), plot(m, S, "r-o");
elseif nargin == 5 
figure(), plot(m, S, "r-o", m, repmat(dokladnaWartosc, 1,(mMax+1)), "b-");
else
 error('zła ilość argumentów');
end
end