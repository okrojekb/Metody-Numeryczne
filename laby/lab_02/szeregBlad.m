function [Z] = szeregBlad(x,Nmax)
%szeregBlad wyznacza zaleznosc bledu wzglednego pomiedzy wartosciami func(x) a
%szeregSin(x, N)
%x - wektor argumentow
%Nmax - maksymalna liczba wyrazow rozwiniecia funcji
Z_mat = zeros(Nmax, 5)
for N = 1:Nmax
    xx = x(randi(length(x),1))
    a = szeregSin(xx, N);
    b = func(xx);
    if a == b && b == 0
        blad = 0;
    else
        blad = (a-b)/b;
    end

    Z_mat(N, :) = [N, xx, a, b, blad];
end
% 2d
colnames = {'N', 'x', 'yaprox', 'yreal', 'blad'};
Z = table(Z_mat(:,1), Z_mat(:,2), Z_mat(:,3), Z_mat(:,4), Z_mat(:,5), 'VariableNames', colnames)

end