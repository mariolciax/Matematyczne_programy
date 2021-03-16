function [x,it] = metNewtona(w,x, EPS)
%Obliczanie wartości iteracji 
%zastosowanie metody newtona do znajdywania pierwiastka wielomianu 
% wyw: [x,it] = metNewtona(w, x)
% WEJ: w - wektor wsp wielomianu oraz x p.startowy
% Wyj: x - rozwazanie, it - liczba iteracji

%EPS = 1e-2;
max_it = 25;
%x=[];

if nargin<3 
    EPS=1e-4;
end

if abs(my_polyval(w, x))<EPS
%if abs(polyval(w, x))<EPS
    it=0;
    return;
end

wp = polyder(w); % współczynnikii pochodnej wielomianu

for it= 1: max_it
    %pochodna = polyval(wp, x);
     pochodna = my_polyval(wp, x);
    if abs(pochodna)<= EPS
        it=-1; %nie ma problemu wychodzimy
        return;
    end
   % poprawka = polyval(w,x)/pochodna;
     poprawka = my_polyval(w,x)/pochodna;
    x = x- poprawka;
    
    if abs(poprawka)<= EPS
        return;
    end
    
end
end

