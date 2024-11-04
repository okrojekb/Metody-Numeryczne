%% Przykład 1
A = [1,-3,2 ; 
    -3,10,-5; 
    2,-5, 6]
b = [3;-8;8]
dokladneRozwiazanie = A\b
przyblizoneRozwiazanie = iteracyjneSor(A,b,1.6, 0.00001)
IteracjeAParametrRelaksacji = tabelaiteracjeAW(A,b,0.001)

%% Przykład 2
A = [1 0 0 -3;
    1 -1 0 0;
    0 0 1 1;
    0 0 -2 2]
b = [3;-1;-2;1]
dokladneRozwiazanie = A\b
przyblizoneRozwiazanie = iteracyjneSor(A,b,0.8, 0.00001)
IteracjeAParametrRelaksacji = tabelaiteracjeAW(A,b,0.001)

%% Przykład 3
A = [1,4,7,-8,-9;
    0,8,5,3,8;
    9,0,6,5,-2;
    7,-8,0,-2,5;
    -9,0,0,6,1]
b = [-35;5;13;-22;14]
dokladneRozwiazanie = A\b
przyblizoneRozwiazanie = iteracyjneSor(A,b,1, 0.00001)
IteracjeAParametrRelaksacji = tabelaiteracjeAW(A,b,0.001)

%% Przykład 4
A = [5 5 2;
    2 3 -4;
    0 9 1]
b = [60; 33; 8]
dokladneRozwiazanie = A\b
przyblizoneRozwiazanie = iteracyjneSor(A,b,0.4, 0.00001)
IteracjeAParametrRelaksacji = tabelaiteracjeAW(A,b,0.001)

%% Przykład 5
A = [2 5 0;
    0 2 2;
    1 0 9]
b = [36;30;84]
dokladneRozwiazanie = A\b
przyblizoneRozwiazanie = iteracyjneSor(A,b,0.8, 0.00001)
IteracjeAParametrRelaksacji = tabelaiteracjeAW(A,b,0.001)

%% Przykład 6
A = [4 -1 0;
    -1 4 -1;
    0 -1 4]
b = [2;6;2]
dokladneRozwiazanie = A\b
przyblizoneRozwiazanie = iteracyjneSor(A,b,0.8, 0.00001)
IteracjeAParametrRelaksacji = tabelaiteracjeAW(A,b,0.001)

%% Przykład 7
A= [2 -9 0 0 0;
    2 1 8 6 0;
    0 11 -10 0 0;
    0 0 0 6 2;
    0 0 0 -3 3]
b = [-16;52;-8;34;3]
dokladneRozwiazanie = A\b
przyblizoneRozwiazanie = iteracyjneSor(A,b,0.3, 0.00001)
IteracjeAParametrRelaksacji = tabelaiteracjeAW(A,b,0.001)

%% Przykład 8
A = [1 0 8 0 0;
    0 3 0 -5 -6;
    0 4 2 0 8;
    0 -3 3 1 0;
    0 2 0 0 4]
b = [25;-14;46;13;78]
dokladneRozwiazanie = A\b
przyblizoneRozwiazanie = iteracyjneSor(A,b,1, 0.00001)
IteracjeAParametrRelaksacji = tabelaiteracjeAW(A,b,0.001)
