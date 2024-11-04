function [] = wykresKolejnychPrzyblizen(a, b, f, e, dokladnaWartosc)
%wykresKolejnychPrzyblizen rysuje wykres przybliżen dla kolejnych m
%   [a,b] - przedział całkowania
%   f - funkcja, którą całkujemy
%   e - dokładność
%   dokladnaWartosc - dokładna wartość całki

[S, M] = wszystkiePrzyblizeniaDoM(a,b,f,e);
maxPotega = log2(M);
m = 2.^[0:maxPotega];
if nargin == 4 
 figure(), plot(m, S, "r-o");
elseif nargin == 5 
figure(), plot(m, S, "r-o", m, repmat(dokladnaWartosc, 1, maxPotega+1), "b-");
xlabel('m');
ylabel('y');
legend('Przybliżona wartość dla m', 'Dokładna wartość','Location','best');

else
 error('zła ilość argumentów');
end

end