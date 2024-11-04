function [BlW, K] = daneDoWykresuBladAK(A,b,w, maxk, mink)
%daneDoWykresuBladAK zwraca wektor BlW - błędów względnych przybliżeń
%rozwiązania układu równań liniowych dla kolejnych iteracji metody SOR oraz
%wektor K - wektor numerów iteracji, dla których zostały wyliczone błędy
%przybliżeń
%   A – nieosobliwa macierz R^(nxn)
% 	b – wektor R^n
% 	w – parametr relaksacji
%   maxk - największy numer iteracji, dla której funkcja wyznacza błąd
%       (domyślnie maxk = 40)
%   mink - najmniejszy numer iteracji, dla której funkcja wyznacza błąd
%       (domyślnie mink = 1)
if nargin == 3
    mink = 1;
    maxk = 40;
elseif nargin == 4
    mink = 1;
elseif nargin ~= 5
 error('zła ilość argumentów');
end
[XK, BlW] = wszystkieDoK(A,b,w, maxk);
BlW = BlW(mink:maxk);
K = mink:maxk;
K=K';
end