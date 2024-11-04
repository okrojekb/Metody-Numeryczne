close all

% Przyklady dla funkcji func 1-10 na tym samym przedziale [0;1]

%% Przykład 3.1
% % całka z f(x) = sin(x) po [0,1]
dokladny = 0.459697694131860 % okolo
[Tm, Te] = testuj(0,1,'func1', 0.459697694131860)

%% Przykład 3.2
% całka z f(x) = cos(x) po [0,1]
dokladny = 0.84147 % okolo
[Tm, Te] = testuj(0,1,'func2', 0.84147)



%% Przykład 3.3
% całka z f(x) = ln(x) po [0,1]
dokladny = -1
[Tm, Te] = testuj(0,1,'func3', -1)


%% Przykład 3.4
% całka z f(x) = sin(x) * ln(x) po [0,1]
dokladny = -0.239812 %okolo
[Tm, Te] = testuj(0,1,'func4', -0.239812)

%% Przykład 3.5
% całka z f(x) = x^5 + 10*x^3 -3*x^2 +4*x - 15 po [0, 1]
dokladny = -34/3 
[Tm, Te] = testuj(0,1,'func5', -34/3 )


%% Przykład 3.6
% całka z f(x) = sin(1/x) po [0,1]
dokladny = 0.504067 %okolo
[Tm, Te] = testuj(0,1,'func6', 0.504067 )

%% Przykład 3.7
% całka z f(x) = e^x po [0,1]
dokladny = 1.7183 % okolo
[Tm, Te] = testuj(0,1,'func7', 1.7183)


% Przykład 3.8
% całka z f(x) = ln(x)*sin(1/x) po [0, 1]
dokladny = -0.136988
[Tm, Te] = testuj(0,1,'func8', -0.136988)


% %% Przykład 3.9
% % całka z f(x) = x^21 po [0, 1]
dokladny = 0.045455
[Tm, Te] = testuj(0,1,'func9', 0.045455)


%% Przykład 3.10
% całka z f(x) = ln(1/x)*sin(1/x) po [0,1]
dokladny = 0.136988
[Tm, Te] = testuj(0,1,'func10', 0.136988)

