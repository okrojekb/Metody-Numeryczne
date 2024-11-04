function [w,BlWW] = DaneDoWykresuBladAW(A,b,k, wmin, wmax)
%DaneDoWykresuBladAW zwraca wektor wektor w - wektor wartości parametrów
%relaksacji, dla których zostały wyliczone błędy oraz wektor BlWW - wektor 
%błędów względnych przybliżeń rozwiązania układu równań liniowych dla 
%kolejnych parametrów relaksacji w k-tej iteracji metody SOR oraz
%   A – nieosobliwa macierz R^(nxn)
% 	b – wektor R^n
% 	k – numer iteracji metody, dla którego wyznaczamy błędy przybliżeń
%   wmin - najmniejsza wartość parametru relaksacji, dla której funkcja 
%       wyznacza błąd (domyślnie minw = 0)
%   wmax - największa wartość parametru relaksacji, dla której funkcja 
%       wyznacza błąd (domyślnie maxw = 2)

if nargin == 3
 wmin = 0;
 wmax = 2;
elseif nargin ~= 5
 error('zła ilość argumentów');
end
w = linspace(wmin,wmax,41);
W = zeros(length(w),length(b));
BlWW = zeros(1,length(w));
for i=1:length(w)
    [Xk,BlW] = wszystkieDoK(A,b,w(i),k);
    W(i,:) = Xk(length(Xk),:);
    BlWW(i) = BlW(length(Xk));
end
end