function y = Sin(x, eps)
newx = mod(x,2*pi); % przedział od 0 do 2pi 
y = 0;

if newx > pi 
    newx = newx -2 * pi; % przedział od -pi do pi
end


for num = 0:eps
    y = y + (-1)^num * newx^(2*num +1)/factorial(2*num+1);
    %korzystając z szeregu Taylora
end
