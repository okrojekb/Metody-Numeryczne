function [w] = przyblizenieCalki(a, b, f, e)
%przyblizenieCalki oblicza całkę z funkcji f na [a,b] złożoną kwadraturą prostokątów (z
%punktem środkowym)z dokładnością e
%   [a,b] - przedział całkowania
%   f - funkcja, którą całkujemy
%   e - dokładność
[S, M] = wszystkiePrzyblizeniaDoM(a,b,f,e);
i = log2(M);
w = S(i);
end