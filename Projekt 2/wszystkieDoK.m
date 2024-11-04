function [XK, BlW] = wszystkieDoK(A,b,w,K)
%wszystkieDoK zwraca macierz XK, której wiersze to przybliżenia rozwiązania
%układu równań liniowych Ax=b dla kolejnych k iteracji (k<=K) z parametrem
%relaksacji w oraz wektor BlW - wektor błędów względnych przybliżeń z XK
%   A – nieosobliwa macierz R^(nxn)
% 	b – wektor R^n
% 	w – parametr relaksacji
%   K - maksymalny numer iteracji metody SOR

XK = zeros(K,length(b));
BlW = zeros(K,1);
k=1;
Xk = zeros(1,length(b));
Xk_1 = zeros(1,length(b));
XK(k,:) = Xk;
BlW(k) = czySpelniaWarunekStopu(Xk, Xk_1, A, b, 2)/norm(b,1);
while k<=K
    Xk_1 = Xk;
    Xk = WartoscXk(Xk, A, b, w);
    k = k+1;
    XK(k,:) = Xk;
    BlW(k) = czySpelniaWarunekStopu(Xk, Xk_1, A, b, 2)/norm(b,1);
end



end