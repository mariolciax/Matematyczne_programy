function [x,it] = metNewtona2(f,x, EPS)
  
%Obliczanie wartości iteracji 
%zastosowanie metody newtona do znajdywania pierwiastka wielomianu 
% wyw: [x,it] = metNewtona(f, x)
% WEJ: f - funkcja 
% Wyj: x - rozwazanie, it - liczba iteracji

%EPS = 1e-2;
max_it = 25;
%x=[];

if nargin<3 
    EPS=1e-4;
end

if abs(f(x))<EPS
    it=0;
    return;
end


for it= 1: max_it
    pochodna = df(f, x);
    
    if abs(pochodna)<= EPS
        it=-1; %nie ma problemu wychodzimy
        return;
    end
    poprawka = f(x)/pochodna;
    x = x- poprawka;
    
    if abs(poprawka)<= EPS
        return;
    end
    
end
end
