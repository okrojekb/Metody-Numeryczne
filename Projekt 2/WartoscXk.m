function [Xk] = WartoscXk(Xk, A, b, w)
%WartoscXk wyznacza nowe Xk, czyli przybliżone rozwiązanie układu równań
%liniowych Ax = b dla k-tej iteracji metody SOR
%   Xk – przybliżony wektor rozwiązań X wyznaczony w (k-1)-tej iteracji metody
%   A – macierz R^(nxn)
%   b – wektor R^n
%   w – parametr relaksacji

for i=1:length(b)
    suma = policzSume(i, Xk,A);
    Xk(i) = (1-w)*Xk(i) + w*(b(i) - suma)/A(i,i);
end
end