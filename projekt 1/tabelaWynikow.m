function [T] = tabelaWynikow(a,b,f,e,dokladna)
%tabelaWynikow zwraca tabelę z wynikiem i błędami implementowanej funkcji 
% dla funkcji f na przedziale [a;b] dla m
%   [a,b] - przedział całkowania
%   f - funkcja, którą całkujemy
%   e - dokładność
%   dokladna - dokladna wartość całki
[S, M] = wszystkiePrzyblizeniaDoM(a,b,f, 10^(-10), 1024);
D = repmat(dokladna, 1, length(S));
m = cast(2.^[0:log2(M)], "double");
BladBezW = cast(abs(S-dokladna), "double");
BladW = cast(abs(BladBezW./dokladna), "double");
t = [m',D', S', BladBezW', BladW'];
colnamest = {'m','Wartość dokładna','Przybliżenie','Błąd bezwzględny', 'Błąd względny'};
T = table(t(:,1), t(:,2), t(:,3), t(:,4), t(:,5), 'VariableNames', colnamest);
end