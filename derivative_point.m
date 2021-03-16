function y= df(f, x)
% value derivative at a point 
dx = 1e-8; % change it if you want
y=(f(x+dx)-f(x-dx))/(2*dx);

end
