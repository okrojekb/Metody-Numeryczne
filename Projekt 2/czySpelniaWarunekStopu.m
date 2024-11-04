function [c] = czySpelniaWarunekStopu(Xk,Xk_1, A, b, typ)
%czySpelniaWarunekStopu zwraca wartość c, czyli wartość błędu Xk dla określonego typu warunku.
%   Xk – przybliżony wektor rozwiązań X w k-tej iteracji metody
%   Xk_1 -przybliżony wektor rozwiązań X w (k-1)-tej iteracji metody
%   A – macierz{\ \mathbb{R}}^{n\times n}
%   b – wektor \mathbb{R}^n
%   typ – numer warunku stopu dla metody SOR (domyślna wartość = 1) 
%       Typy warunków:  
%           1 -> c = ||xk-x(k-1)||
%           2 -> c = ||Axk -b||
%           3 -> c = ||xk-x(k-1)||\||xk-1||
%           4 -> c = ||xk-xk-1||

p = 1;
if typ ==1
    c = norm(Xk-Xk_1,p);
elseif typ == 2
    iloczyn = A*Xk';
    TF = isnan(iloczyn);
    iloczyn(TF) = 0;
    c = norm(iloczyn -b, p);
elseif typ == 3
    c = norm(Xk - Xk_1,p)/norm(Xk_1,p);
else
    c = norm(Xk-Xk_1,p);
end
end