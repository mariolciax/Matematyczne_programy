clc
 clear
 format
 format compact
 
p1 = -1;
p2 = 1;
n = 100;
d = (p2 - p1)/n;
disp('FRAKTALE NETWONA');
% w = input('Podaj wspolczynniki wielomianu w =');
k = menu('FRAKTALE NEWTONA',...
    'w - jedynki',...   % k =1
    'w - losowy',...    % k =2
    'Podaj wspólczynniki wielomianu w=',...
    'Koniec');
switch k % casy się wykluczają w C trzeba uzywac break
    case 1 
        w = ones(5, 1);
    case 2
        w = rand(10, 1);
    case 3 
        w = input('Podaj wspolczynniki wielomianu w =');
    case 4 
       disp('Koniec')
       return;
end

h = waitbar(0,'0%');
disp('Obliczenia...');

R = zeros(n);
for r = 1:n
    for s =1:n
        x = p1+r*d+1i*(p1+s*d);
        [~ , R(r,s)] = metNewtona(w,x);
       % R(r,s) = it;
        
    end
    waitbar(r/n,h,strcat(int2str(r/n*100) ,'%'))
end

close(h);
imagesc(R);
colorbar;
title({'Wizualicja zbieżności met. Newtona', ...
    'w(x)=a_n*x^n+...+a_1*x+a_0',...
    strcat('a=', mat2str(w,1))});





 %w = input('Podaj wspolczynniki wielomianu w =');
%  w = poly([2,3]);
%  
%  x = 2.5;
%  
%  
%  [x,it] = metNewtona(w, x)
%  
%  disp('it = ');
%  disp(it);
%  disp('x = ');
%  disp(x);

% w = poly([2,3])
% f = @(x)polyval(w,x); %funkcja 
% x = 1;
% [x,it] = metNewtona2(f, x)

% w = pi/4;
% f = @(x)sin(x); %funkcja 
% x = 1;
% [x,it] = metNewtona2(@sin, x);
% 
% %x=0:0.1:pi; % poczatek krok do
% x = linspace(0, pi, 10); %poczatek koniec sredni
% y = df(@sin, x)
x = linspace(-2, 2, 5); %poczatek koniec liczba wynikow
%x=1
% 
% y = df(@fun, x)
