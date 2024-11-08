
close all;
Nmax = 7;
x = linspace(-(3/4),3/4, 10);
A = szeregLn(x, Nmax);
z = linspace(1/2,3, Nmax);
z1 = repmat(z,length(x),1);
szeregLnPlot(x, Nmax);
c = ["y", "m", "c", "r", "g", "b", "k", "#D95319", "#7E2F8E"];
d = ["-", "--", ":", "-."];
w = linspace(2, 10, 7);
for j=1:9
   hold on;
    line1 = animatedline(Color=c(mod(j, 8)+1), LineWidth=w(1), LineStyle=d(mod(j,3)+1));
    line2 = animatedline(Color=c(mod(2*j, 8)+1), LineWidth=w(2), LineStyle=d(mod(2*j,3)+1));
    line3 = animatedline(Color=c(mod(3*j, 8)+1), LineWidth=w(3), LineStyle=d(mod(4*j,3)+1));
    line4 = animatedline(Color=c(mod(4*j, 8)+1), LineWidth=w(4), LineStyle=d(mod(5*j,3)+1));
    line5 = animatedline(Color=c(mod(5*j, 8)+1), LineWidth=w(4), LineStyle=d(mod(7*j,3)+1));
    line6 = animatedline(Color=c(mod(6*j, 8)+1), LineWidth=w(4), LineStyle=d(mod(8*j,3)+1));
    line7 = animatedline(Color=c(mod(7*j, 8)+1), LineWidth=w(4), LineStyle=d(mod(10*j,3)+1));
    for i=1:length(x)
        addpoints(line1, x(i), A(1,i), z1(i, 1));
        addpoints(line2, x(i), A(2,i), z1(i,2));
        addpoints(line3, x(i), A(3,i), z1(i,3));
        addpoints(line4, x(i), A(4,i), z1(i,4));
        addpoints(line5, x(i), A(5,i), z1(i,5));
        addpoints(line6, x(i), A(6,i), z1(i,6));
        addpoints(line7, x(i), A(7,i), z1(i,7));
        drawnow limitrate;
        pause(0.1);
    end
end
