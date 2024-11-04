function [x, y] = wartosciFunkcji(a, b, f,maxM)
%wartosciFunkcji zwraca wektor x zawierający węzły interpolacji oraz
%powtórzone dwukrotnie końce podprzedziałów [a;b] oraz y zawierający
%wartości funkcji f w węzłach interpolacjii powtórzone trzykrotnie
%   [a,b] - przedział całkowania
%   f - funkcja, którą całkujemy
%   maxM - ilosc podprzedziałów

Xm = [b];
Am = [];
m = 1/2;
Hm = 2*(b-a);
while m<maxM
    Xm = [Xm, Am];
    m=m*2;
    Hm = Hm/2;
    Am = Xm - (1/2)*Hm;
    
end
X1 = repmat(Xm, 1, 2);
X2 = sort(X1);
X3 = X2(1:length(X2)-1);
X4 = [a, X3, Am];
X5 = sort(X4);
x = X5;
a = repmat(Am, 1,3);
X = sort(a);
Pm = feval(f, X);
y = Pm;
x;y;

end