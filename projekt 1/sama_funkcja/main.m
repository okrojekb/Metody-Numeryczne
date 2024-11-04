%% Przykład 1
% całka z f(x) = sin(x) po [0,5]
dokladny1 = 0.71634 % okolo
przyblizony_do_10_51 = przyblizenieCalki(0,5,'func1', 10^(-5))


%% Przykład 2
% całka z f(x) = sin(x) po [0,1]
dokladny2 = 0.45970 % okolo
przyblizony_do_10_52 = przyblizenieCalki(0,1,'func1', 10^(-5))

%% Przykład 3
% całka z f(x) = ln(x) po [0,5]
dokladny3 = 3.0472 % okolo
przyblizony_do_10_53 = przyblizenieCalki(0,5,'func3', 10^(-5))


%% Przykład 4
% całka z f(x) = ln(x) po [0,1]
dokladny4 = -1
przyblizony_do_10_54 = przyblizenieCalki(0,1,'func3', 10^(-5))