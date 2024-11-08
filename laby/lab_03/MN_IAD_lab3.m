% figure(5000)
% close()

close all

x = linspace(0, 2*pi, 50);
n = [-2, -6, -10, -15, -20];

[W,Z] = pochodnaTable(x, @func, @pochodnaP, @pochodnaD, n);

colnamesW = {'h','P_dokladna','P_przyblizona'};
W_final = table(W(:,1), W(:,2), W(:,3), 'VariableNames', colnamesW)

colnamesZ = {'x','P_dokladna','P_przyblizona'};
Z_final = table(Z(:,1), Z(:,2), Z(:,3), 'VariableNames', colnamesZ)

pochodnaWykres(x, @func, @pochodnaP, @pochodnaD, n);





% % func(pi/3)
% % x = [1,2,3,4,5]
% % h = [4,6,8]
% % X = repmat(x',1,length(h))
% % H = repmat(h,length(x),1)
% % X_1 = X-H
% % X_2 = X+H
% % y = (func(X_1) - func(X_2))./(2*h)
% % n = [-2, -6, -10, -15, -20]
% % x = pi/6
% % h = 2.^n
% %[W,Z] = pochodnaTable(x, @func, @pochodnaP, @pochodnaD, n)
% 
% % zeros(2, 3)
% % 
% % n = [-2, -6, -10, -15, -20]
% % x_1 = pi/6
% % h = 2.^n
% % W = zeros(length(h), 3)
% % W(:,1) = n
% % pochodnaD(pi)
% % W(:,2) = repmat(pochodnaD(x_1),1,length(h))
% % % W(:,3) = pochodnaP(x_1, @func, h)
% 
% % n = -12;
% % h = 2^n;
% % Z = zeros(length(x), 3);
% % Z(:,1) = x
% % Z(:,2) = pochodnaD(x)
% % Z(:,3) = pochodnaP(x, @func, h)
% 
% 
% % 1 figure, plot(x, func(x))
% 
% % 2 figure, plot(x, pochodnaD(x))
% 
% 
% % 
% % h = 2^(-12);
% % X = repmat(x',1,length(h));
% % H = repmat(h,length(x),1);
% % X_1 = X-H;
% % X_2 = X+H;
% % a = func(X_1)
% % b = func(X_2)
% % pochodna = func(X_1) - func(X_2)
% % x = linspace(0,6*pi,50);
% % y1 = sin(x);
% % y2 = cos(x);
% % figure, plot(x,y1,'r',x,y2,'g');
% % title('funckje trygonometryczne w przedziale[0,6pi]','FontSize',14);
% % legend('sin','cos');
% % xlabel('x'); ylabel('y')
% % 
% % 
% % 
% % h = 2.^n;
% % 
% % y1 = pochodnaP(x, @func, h);
% % y2 = pochodnaP(x, @func, h)
% % 3  figure, plot(x, y2(:,1), 'r', x, y2(:,2), 'g',  x, y2(:,3), 'y',  x, y2(:,4), 'c',  x, y2(:,5), 'k');
% 
% 
% % z = pochodnaP(x, @func, 2.^(n))
% % 
% % 
% % figure, plot(x, Z(:,3))
% % 
% % 
% % figure, plot(x, pochodnaP(x, @func, 2^(-12)))
% 
% % figure() , subplot(2, 2, 1), plot(x, func(x)), title("funkcja f = 2*cos(x/2)"), legend("2*cos(x/2)"), xlabel("x"), ylabel("y = 2*cos(x/2)");
% % subplot(2,2,3), plot(x, pochodnaD(x)), title("pochodna funkcji f = 2*cos(x/2)"), legend("(-sin(x/2)"), xlabel("x"), ylabel("pochodna dokładna");
% % subplot(2,2,[2,4]), plot(x, y2(:,1), 'r', x, y2(:,2), 'g',  x, y2(:,3), 'y',  x, y2(:,4), 'b',  x, y2(:,5), 'k'), 
% % title("przybliżona pochodna funkcji f = 2*cos(x/2)"), legend("n = -2", "n = -6", "n = -10", "n = -15", "n = -20"), xlabel("x"), ylabel("pochodna przybliżona");
