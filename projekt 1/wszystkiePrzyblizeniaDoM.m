function [S, M] = wszystkiePrzyblizeniaDoM(a, b, f, e, maxM)
%wszystkiePrzyblizeniaDoM zwraca wektor przybliżeń całki z f(x) po [a,b]
%dla kolejnych m = 1,2,4,8,....,M, gdzie wartośc bezwzględnej 
%różnicy przybliżeń SM i SM2 jest mniejsza od ϵ
%   [a,b] - przedział całkowania
%   f - funkcja, którą całkujemy
S = [];
Xm = [b];
m=1;
[Sm2, Xm] = przyblizenieDlaM(Xm, f, (b-a));
S = [S, Sm2];
m=2;
[Sm, Xm] = przyblizenieDlaM(Xm, f, (b-a)/2);
S = [S, Sm];
if nargin == 4 
    while abs(Sm - Sm2)>e
        m=m*2;
        Sm2 = Sm;
        [Sm, Xm] = przyblizenieDlaM(Xm, f, (b-a)/m);
        S = [S, Sm];
    end
    M=m;
    S;M;
elseif nargin == 5 
    while m<maxM
        m=m*2;
        Sm2 = Sm;
        [Sm, Xm] = przyblizenieDlaM(Xm, f, (b-a)/m);
        S = [S, Sm];
    end
    M=m;
    S;M;
else
 error('zła ilość argumentów');
end


end