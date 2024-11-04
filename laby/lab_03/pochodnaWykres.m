function [] = pochodnaWykres(x,f,pp,pd,n)
%pochodnaWykres generuje okno graficzne z trzema wykresami
%ilorazu roznicowego
% x - wartosc argumentu funkcji
% f - funkcja rozniczkowalna
% pd - dokladna pochodna f
% pp - przyblizona pochodna f
% n - wykladnik w wyrazeniu h = 2^n

h = 2.^n;

y2 = pp(x, f, h);

figure() , subplot(2, 2, 1), plot(x, f(x)), title("funkcja f = 2*cos(x/2)"), legend("2*cos(x/2)"), xlabel("x"), ylabel("y = 2*cos(x/2)");
subplot(2,2,3), plot(x, pd(x)), title("pochodna funkcji f = 2*cos(x/2)"), legend("(-sin(x/2)"), xlabel("x"), ylabel("pochodna dokładna");
subplot(2,2,[2,4]), plot(x, y2(:,1), 'r', x, y2(:,2), 'g',  x, y2(:,3), 'y',  x, y2(:,4), 'b',  x, y2(:,5), 'k'), 
title("przybliżona pochodna funkcji f = 2*cos(x/2)"), legend("n = -2", "n = -6", "n = -10", "n = -15", "n = -20"), xlabel("x"), ylabel("pochodna przybliżona");

end