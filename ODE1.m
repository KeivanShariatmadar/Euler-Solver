function [yout] = ODE1(F,t0,h,tfinal,y0)
% Euler solver for ODEs
% F: Function, t: point, h: step size, y0:initial value 
% To solve dy/dt = F(t,y) with y(t0) = y0

y = y0;
yout = y;

for t = t0 : h : tfinal-h
    s = F(t,y);
    y = y + h*s;
    yout = [yout; y]
end

