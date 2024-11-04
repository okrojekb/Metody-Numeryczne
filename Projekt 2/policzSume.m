function [suma] = policzSume(i, Xk,A)
%policzSume zwraca wartość suma, czyli wartość sumy (po j=1 do j=n, gdzie
%j!=i)  A(i,j)*Xk(j)
%   i – indeks elementu wektora X, który przybliżamy 
%   Xk – przybliżony wektor rozwiązań X, gdzie elementy o indeksach do i 
%       zostały wyznaczone w k-tej iteracji metody, a elementy o indeksach 
%       większych od i zostały wyznaczone w (k-1)- tej iteracji.
%   A – macierz R^(nxn)

suma = 0;
for j=1:length(Xk)
    if j == i
        continue
    end
    if sum(isinf(suma))==1
        suma = Inf;
        break
    end
    if isinf(Xk(j)) == 1 && A(i,j) == 0
        continue
    end
    suma = suma + A(i,j)*Xk(j);
end
end