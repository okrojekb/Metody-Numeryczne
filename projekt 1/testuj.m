function [tabelaM, tabelaE] = testuj(a,b,f, dokladna)
%testuj zwraca 2 tabele: 
%       1. z wynikiem i błędami implementowanej funkcji 
%           dla funkcji f na przedziale [a;b] dla m
%       2. z wynikiem i błędami implementowanej funkcji 
%           dla funkcji f na przedziale [a;b] dla E
%oraz rysuje 2 wykresy:
%       1. wykres funkcji f oraz jej interpolacji
%           wielomianami stopnia 0 dla 32 węzłów
%       2. wykres przybliżen dla kolejnych m
%   [a,b] - przedział całkowania
%   f - funkcja, którą całkujemy
%   dokladna - dokładna wartość całki

wykresInterpolacja(a,b,f);
wykresKolejnychPrzyblizen(a,b,f,10^(-5),dokladna);
tabelaE = mADokladnosc(a,b,f,dokladna);
tabelaM = tabelaWynikow(a,b,f,10,dokladna);
tabelaM; tabelaE;
end