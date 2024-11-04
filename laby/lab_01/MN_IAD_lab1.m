%% Laboratorium 1
% tic
% a = 5
% b = a+2
% 5
% toc
% s = 'Matlab'
% a = double(s)
% p = 'jezyk'
% 
% A = [2,3,4;5,6,7]
% B = [1 2; 11 8; 7 3]
% 
% X = [A' B; 1:4] % X to połączenie kolumn transponowanej macierzy A i kolumn macierzy B oraz dodanie wiersza [1,2,3,4]
% 
% X(8)
% X(:, [1,2]) = X(:,[2,1]) % zamiana kolumn 1 i 2
% X(10,1) = 1 % powiększa macierz tak, aby na tym miejscu przypisać 1, wypełniając resztę miejsc zerami
% % X(:,2) = [] % usuwa drugą kolumnę
% 
% n = 1/3
% format long
% n
% lancuch_poziomy = ['jezyk', s]
% % lancuch_pionowy = ['jezyk'; s] - nie da się bo mają różną ilość liter
% lancuch_pionowy = ['jezyki'; s]
% length(s)
% strcmp(s, p)
% strncmp(s, p, 3)
% upper(lancuch_pionowy)
% lower(lancuch_poziomy)
% n = 8
% n = 3.5
% int2str(n)
% x = num2str(n)
% str2double(x)

% x = 2
% e_do_x = exp(x)
% log_nat = log(x)
% log_10 = log10(x)
% 
% sin(x)
% disp(['sin(x) = ', num2str(sin(x))])
% n = 3.45
% ceil_n = ceil(n)
% floor_n = floor(n)

%% Macierze


%% ZADANIA
%1.2a
x = 4*10^2;

%1.2b
w2 = -2:0.2:2
w1 = w2'

%1.2c
A = [-4 6 0; 1 -2 6; 5 9 1];
f = [3;0;8];
dlugosc_A = length(A)
dlugosc_f = length(f)

%1.2d
A = [2,3,5,6;7,3,21,5;1,3,6,7;13,5,8,2]
B = [56,4,2,7;4,7,2,6;45,8,5,2;6,3,2,77]
wyr1 = (A+B)^2 + 2*(A-B)
save lab1.mat
clear all
load lab1.mat

%1.2e
A = magic(4)
Bt = randn(4)'
C = (A+Bt)/2

%1.2f
A = [2,3,5;7,3,5;1,3,7]
B = [56,4,7;4,7,6;45,8,5]
A.^2
A*B

%1.2g
C = [4 1; 7 2]
x = [1 4]
x*C

%1.2h
A = rand(3,5)
B = rand(5,4)

C1 = zeros(3,4)
tic
for i = 1:3
    for j=1:4
        C1(i,j)=A(i,:)*B(:,j);
    end
end
toc
tic 
C2 = A*B
toc

%1.2i
A = randn(4)
wyznacznik = det(A)
wartosci_wlasne = eig(A)
wspolczynniki_wielomianu = poly(A)
rzad = rank(A)

% 1.2j
w = rand(1, 12)
Y = [w(1:4); w(5:8); w(9:12)]

% 1.2k
a = 7/3
b = 2.33
for n=0:7
    an = a^n
    bn = b^n
    an - bn
end

% 1.2l
(sin(pi/4))^5
log(sqrt(5))
abs(3-2i)

% 1.2n
heron(3,4,5)

function P = heron(a, b, c)
    p = (a+b+c)/2;
    P = sqrt(p*(p-a)*(p-b)*(p-c));
end

