close all
x = [-2,0,2,-3,3,-4,4]
c1 = ilorazr(x, fun(x))


% %% zad 1
% 
% % przyklad 1
% x_1 = linspace(1, 10, 5)
% fun(x_1)
% c1 = ilorazr(x_1, fun(x_1))
% t1 = [1,2]
% myhorner(c1, x_1, t1)
% 
% 
% % przyklad 2
% c2 = [0,4,5,1,0]
% x_2 = [0,1,2,3]
% t2 = [1,2,3]
% myhorner(c, xk, t)
% 
% %% zad 2
% 
% % przyklad 1
% wielowykres(@log, 1, 10, 20)
% 
% % przyklad 2
% wielowykres(@fun, 1, 10, 10)