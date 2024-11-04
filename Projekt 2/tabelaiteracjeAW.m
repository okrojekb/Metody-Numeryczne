function [T] = tabelaiteracjeAW(A,b,d)
%tabelaiteracjeAW zwraca tabelę T pokazująca potrzebną ilość iteracji metody 
%SOR, aby osiągnąć przybliżenie z dokładności d=0.01 dla różnych wartości 
%parametru relaksacji
%   A – nieosobliwa macierz R^(nxn)
% 	b – wektor R^n
% 	d – dokładność

w = linspace(0,2,21);
t = zeros(length(w), 3);
for i=1:length(w)
    k=0;
    Xk = zeros(1,length(b));
    Xk_1 = zeros(1,length(b));
    wartoscWarunku = Inf;
    while wartoscWarunku > d & k<10000
        Xk_1 = Xk;
        Xk = WartoscXk(Xk, A, b, w(i));        
        if sum(isinf(Xk))>0
            k = Inf;
            break
        end
        if sum(isnan(Xk))>0
            k = Inf;
            break
        end
        k = k+1;
        wartoscWarunku = czySpelniaWarunekStopu(Xk, Xk_1, A, b, 2);
    end
    bl = czySpelniaWarunekStopu(Xk, Xk_1, A, b, 2)/norm(b,1);
    if k >= 10000
        k = Inf;
        bl = NaN;
    end
    t(i,:) = [w(i), bl, k];
end
colnamest = {'parametr relaksacji','Błąd względny przybliżenia','numer potrzebnych iteracji dla dokładności d'};
T = table(t(:,1), t(:,2), t(:,3), 'VariableNames', colnamest);
end