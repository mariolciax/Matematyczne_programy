function s = simpson2(nr, nt,f)
%Funkcja oblicza wartość podwójnej całki oznaczonej na kole o promieniu 1,
%wykorzystując zmienne biegunowe (x = rcos(t), y=rsin(t), jakobian=r) i złożoną metodę simpsona
%% Wywolywanie: s = simpson (nr,nt,f);
%% Dane wejsciowe: 
% nr = liczba podziałów przedziału [0, 1] (nr >= 2 i parzyste)
% nt = liczba podziałów przedziału [0, 2pi]  (nt >= 2 i parzyste)
% f = funkcja podcałkowa zależna od x i y (np. @(x,y) x.^2+y)
%% Dane wyjsciowe: s = przyblizona wartosc calki
%%
    if or(or(nr < 2, mod(nr,2)),or(nt < 2, mod(nt,2)))
        disp ('Liczba podprzedzialow musi byc parzysta oraz >= 2.')
        return
    end

    ar = 0;
    br = 1;
    at = 0;
    bt = 2*pi;
   % hr=(br-ar)/nr;
    %ht = (bt-at)/nt;
    s = 0;
    for i =0:nr
         if i == 0 || i == nr
             p=1;
         elseif mod(i,2)~=0
             p=4;
         else 
             p=2;
         end
         for j = 0:nt
             if j==0 || j==nt
                 q=1;
             elseif mod(j,2)~=0
                 q=4;
             else
                 q=2;
             end
             r = ar+j*(br-ar)/nr;
             t = at+i*(bt-at)/nt;
             s = s+p*q*(bt-at)/nt*(br-ar)/nr/9*r*f(r*cos(t),r*sin(t));

         end         
    end
    disp(s)
end
