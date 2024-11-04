function [X] = iteracyjneSor(A,b,w,d,warunek, d2)
%iteracyjneSor zwraca wektor X, który jest przybliżonym z dokładnością d 
%rozwiązaniem układu równań liniowych Ax=b
%   A – nieosobliwa macierz R^(nxn)
% 	b – wektor R^n
% 	w – parametr relaksacji
% 	d – dokładność 
% 	warunek – numer warunku stopu dla metody SOR ( domyślna wartość warunek = 1) 
%     Numery warunków:  
%     1 -> ||xk-x(k-1)|| < d
%     2 -> ||Axk -b|| < d
%     3 -> ||xk-x(k-1)||\||xk-1|| < d
%     4 -> ||xk-xk-1|| < d||x(k-1)|| + d2
%   d2 – druga dokładność, gdy stosujemy warunek Gilla (warunek == 4) 
%     (domyślna wartość d2 = d - 0.1d)

if nargin == 4
    warunek = 1;
elseif nargin == 5
    d2 = d-0.1*d;
elseif nargin > 6
 error('zła ilość argumentów');
end
k=0;
Xk = zeros(1,length(b));
Xk_1 = zeros(1,length(b));
wartoscWarunku = Inf;
if warunek == 4
    while wartoscWarunku > d*norm(Xk_1,1) + d2
        Xk_1 = Xk;
        Xk = WartoscXk(Xk, A, b, w);
        k = k+1;
        wartoscWarunku = czySpelniaWarunekStopu(Xk, Xk_1, A, b, warunek);
    end
else  
    while wartoscWarunku > d
        Xk_1 = Xk;
        Xk = WartoscXk(Xk, A, b, w);
        k = k+1;
        wartoscWarunku = czySpelniaWarunekStopu(Xk, Xk_1, A, b, warunek);
    end
end
X = Xk';
end