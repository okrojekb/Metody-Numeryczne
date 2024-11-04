% f1 = inline('cos(2*x*pi)'); 
% y = f1(0.5)
% % Funkcje, umożliwiające szybkie tworzenie kodu funkcji bez tworzenia oddzielnego 
% % m-pliku:
% % nazwa_funkcji = @(arg1,...,argN) ciało_funkcji
% sqr = @(x) x.^2; % definicja
% a = sqr(5)
% 
% potega(4)
% potega(4,3)
% 
% function [min, max] = stat(U)
% % STAT funkcja oblicza minimum i maksimum wektora U
% n = length(U);
% min = minimum(U);
% max = maksimum(U,n);
% function mi = minimum(X)
% % oblicza najmniejszy element wektora X
% x2 = sort(X); 
% mi = x2(1);
% end
% function ma = maksimum(X,y)
% % oblicza najwiekszy element wektora X o y elementach
% x2 = sort(X); 
% ma = x2(y);
%  end
% end
% 
% function c = potega(a,b)
% % POTEGA podnosi wejscie do kwadratu -> potega(a) lub do 
% % potęgi wg drugiego argumentu -> potega(a,b)
% if nargin < 1 
%  error('za mało argumentów')
% elseif nargin == 1 
%  c = a.^2;
% elseif nargin == 2
%  c = a.^b;
% else 
%  error('za dużo argumentów')
% end
% end
% 


x = [-2:6]
% 2a
func(x)

% 2b
szeregSin(x)

%2c
szeregBlad(x,10)


