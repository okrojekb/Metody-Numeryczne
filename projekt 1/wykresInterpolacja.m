function [] = wykresInterpolacja(a,b,f)
%wykresInterpolacja rysuje wykres funkcji f oraz jej interpolacji
%wielomianami stopnia 0 dla 32 węzłów
%   [a,b] - przedział całkowania
%   f - funkcja, którą całkujemy

x1 = linspace(a,b,65536);
y1 = feval(f, x1);
[x,y] = wartosciFunkcji(a,b,f, 32);

figure(), plot(x1,y1,'-',x,y,'-');
xlabel('x');
ylabel('y');
legend('f(x)', 'Interpolant','Location','best');

end