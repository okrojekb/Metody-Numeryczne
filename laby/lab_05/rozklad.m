function [d,s] = rozklad(a,b)
%rozklad wyznacza rozklad Banachiewicza-Cholesky-ego
%   a - wektor dlugosci n - przekatna macierzy A
%   b - wektor dlugosci n-1 

if nargin ~= 2 
 error('zła ilość argumentów')
elseif iscolumn(a) | iscolumn(b)
 error('argumenty nie są wektorami poziomymi')
elseif length(b) ~= length(a)-1
 error('złe długości wektorów')
end

L = zeros(length(a), length(a));
L(1,1)=sqrt(a(1));

d = zeros(1, length(a));
s = zeros(1, length(b));
d(1) = sqrt(a(1));


% for k=1:length(a)-1
%     L(k+1, k) = b(k)/L(k,k);
%     L(k+1,k+1) = sqrt(a(k+1)-L(k+1,k)^2);
% end

for k=1:length(a)-1
    s(k) = b(k)/d(k);
    d(k+1) = sqrt(a(k+1)-s(k)^2);
end




end