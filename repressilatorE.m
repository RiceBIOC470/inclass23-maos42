function dx = repressilatorE(t,x)

k = 0.1; k2=5; n = 4; k2e=1; K2E=30;

dx = zeros(3,1);
dx(1) = k*(1-x(1))-K2E*x(3)^n/(1+x(3)^n)*x(1);
dx(2) = k*(1-x(2))-k2*x(1)^n/(1+x(1)^n)*x(2);
dx(3) = k*(1-x(3))-k2e*x(2)^n/(1+x(2)^n)*x(3);
end