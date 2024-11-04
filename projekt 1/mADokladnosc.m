function [W] = mADokladnosc(a,b,f, dokladna)
%mADokladnosc zwraca tabelę z wynikiem i błędami implementowanej funkcji 
% dla funkcji f na przedziale [a;b] dla E
%   [a,b] - przedział całkowania
%   f - funkcja, którą całkujemy

E = [10,1,0.1,0.01,0.001,0.0001,0.00001];
Xm = [b];
m=1;
[Sm2, Xm] = przyblizenieDlaM(Xm, f, (b-a));
m=2;
[Sm, Xm] = przyblizenieDlaM(Xm, f, (b-a)/2);
Me = [];
Se =[];
E = [10,1,0.1,0.01,0.001,0.0001,0.00001];
for i = 1:length(E)
 while abs(Sm - Sm2)>E(i)
    m=m*2;;
    Sm2 = Sm;
    [Sm, Xm] = przyblizenieDlaM(Xm, f, (b-a)/m);
 end
 Se = [Se; Sm];
 Me = [Me; m];

end
BladBezW = cast(abs(Se-dokladna), "double");
BladW = cast(BladBezW./dokladna, "double");
w = [E', Me, Se, BladBezW, BladW];

colnamesw = {'e','m','Przybliżenie','Błąd bezwzględny', 'Błąd względny'};
W = table(w(:,1), w(:,2), w(:,3), w(:,4), w(:,5),'VariableNames', colnamesw);
end