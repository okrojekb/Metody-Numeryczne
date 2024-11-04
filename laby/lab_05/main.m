%% Przykład 1
disp("Przykład nr 1")
disp("wektory:")

a = [1,5,5,5]
b = [2,2,2]

disp("macierz A:")
x1 = diag(a);
x2 = diag(b,1);
x3 = diag(b,-1);
A = x1+x2+x3

disp("Czy macierz A jest dodatnio określona?")
all(eig(A)>0)

disp("wektory d i s dla macierzy A")
[d1,s1]= rozklad(a,b)

disp("macierz L")
l1 = diag(d1);
l2=diag(s1,-1);
L = l1+l2

%% Przykład 2
disp("Przykład nr 2")
disp("wektory:")

x = [1,2,3,4,5]
y = [-1,0,2,0]

disp("macierz B:")
y1 = diag(x);
y2 = diag(y,1);
y3 = diag(y,-1);
B = y1+y2+y3

disp("Czy macierz B jest dodatnio określona?")
all(eig(B)>0)

disp("wektory d i s dla macierzy B")
[d2,s2]= rozklad(x,y)

disp("macierz K")
k1 = diag(d2);
k2=diag(s2,-1);
K = k1+k2


