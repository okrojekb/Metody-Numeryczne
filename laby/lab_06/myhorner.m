function [y] = myhorner(c,x,t)
%myhorner wyznaczy wartosci wielomianu w punktach t
%   c - wspolczynniki wielomianu w postaci Newtona
%   x - wezly
%   t - wektor argumentow
y = repmat(c(length(c)),1,length(t));

for k=(length(c)-1):-1:1
    y = y.*(t-x(k)) + c(k);
end
end
