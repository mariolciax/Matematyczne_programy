% skrypt testowy do metod obliczających wyznacznik macierzy trójdiagonalnej
% metody wykorzystującej GE i metody wykorzystującej zależności między
% minorami głównymi
% w pierwszej kolejności zostało ręcznie wypisanych 12 przykładów (skrajne,
% ciekawe przypadki np. z liczbami zespolonymi)
% następnie skorzystano z funkcji testującej wybraną ilość macierzy
% generowanych losowo

clc
clear
format 
format compact

%przyklad 1 macierz wymiaru 2x3
disp("Przykład 1");
a= [1 2 3; 3 4 5];
det2 = metGE(a);
det1 = metMINOR(a);
disp(det2); disp(det1);
disp('----------------------------');

%przyklad 2 macierz 3x3
disp("Przykład 2");
a= [1 2 0; 3 4 5; 0 8 1];
det2 = metGE(a);
det1 = metMINOR(a);
disp(det2); disp(det1); disp(det(a));
disp('----------------------------');

%przykład 3
disp("Przykład 3");
a= [1 2 0 0 0 0; 3 4 5 0 0 0 ; 0 8 1 2 0 0; 0 0 2 2 3 0; 0 0 0 2 1 2; 0 0 0 0 3 3];
det2 = metGE(a);
det1 = metMINOR(a);
disp(det2); disp(det1); disp(det(a));
disp('----------------------------');

%przykład 4, w macierzy mamy i dodatnie i ujemne wartości
disp("Przykład 4");
a= [1 -2 0 0 0 0; 3 -4 5 0 0 0 ; 0 8 1 -2 0 0; 0 0 2 2 3 0; 0 0 0 2 -1 2; 0 0 0 0 3 3];
det2 = metGE(a);
det1 = metMINOR(a);
disp(det2); disp(det1); disp(det(a));
disp('----------------------------');
 
%przykład 5, ujemne wartości w macierzy 
disp("Przykład 5");
a= [-1 -10 0 0 0; -2 -1 -19 0 0  ; 0 -2 -1 -2 0 ; 0 0 -2 -2 -1 ; 0 0 0 -1 -2];
det2 = metGE(a);
det1 = metMINOR(a);
disp(det2); disp(det1); disp(det(a));
disp('----------------------------');
 
%przykład 6, gdy a_11 jest równy 0
disp("Przykład 6");
a= [0 1.99 0 0 0; 1.11 0 1.22 0 0  ; 0 22.12 1 2 0 ; 0 0 2 2 1 ; 0 0 0 1.791 2];
det2 = metGE(a);
det1 = metMINOR(a);
disp(det2); disp(det1); disp(det(a));
disp('----------------------------');

%przykład 7, wykorzystujący iiny sposób tworzenia macierzy trójdiagonalnej
disp("Przykład 7");
N = 10;
a = -1;
b = 4.66;
c = 2.99;
M = diag(a*ones(1,N)) + diag(b*ones(1,N-1),1) + diag(c*ones(1,N-1),-1);
det2 = metGE(M);
det1 = metMINOR(M);
disp(det2); disp(det1); disp(det(M));
disp('----------------------------');

%przykład 8, wykorzystujący inny sposób tworzenia macierzy trójdiagonalnej
disp("Przykład 8");
N = 10;
a = full(gallery('tridiag',N,-1,2,-1));
det2 = metGE(a);
det1 = metMINOR(a);
k = 0;
if det1 == det(a)
    k = 1;
end
disp(det2); disp(det1); disp(det(a)); disp(k);
disp('----------------------------');

%przykład 9
disp("Przykład 9");
N = 100;
a = full(gallery('tridiag',N,0.99 , -2 , 2.01));
det2 = metGE(a);
det1 = metMINOR(a);
k= 0;
if det1 == det(a)
    k = 1;
end
disp(det2); disp(det1); disp( det(a)); disp(k);
disp('----------------------------');

%przykład 10
disp("Przykład 10");
N = 2;
a = full(gallery('tridiag',N,0.99 , -2 , 2.01));
det2 = metGE(a);
det1 = metMINOR(a);
k = 0;
if det1 == det(a)
    k = 1;
end
disp(det2); disp(det1); disp(k);
disp('----------------------------');

%przykład 11 przykład w przestrzeni zespolonej
disp("Przykład 11 w przestrzeni zespolonej");
a = full(gallery('tridiag',4,1+1j , -1j , -1));
det2 = metGE(a);
det1 = metMINOR(a);
disp(det2); disp(det1); disp(det(a));
disp('----------------------------');

%przykład 12 przykład w przestrzeni zespolonej
disp("Przykład 12 w przestrzeni zespolonej");
a = full(gallery('tridiag',100,1+1j , 2-3j , -1));
det2 = metGE(a);
det1 = metMINOR(a);
disp(det2); disp(det1); disp(det(a));
disp('----------------------------');


% testy ogólne metMINOR parametr = 1
disp('TEST metMINOR')
test_(10000,1);

disp('----------------------------');

%testy ogólne metGE parametr = 0

disp('TEST metGE')
test_(10000,0);
 
