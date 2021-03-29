clc
clear
format 
format compact

%przyklad 1
a= [1 2 3; 3 4 5];
det = metGE(a);
disp(det)

%przyklad 2
a= [1 2 0; 3 4 5; 0 8 1];
det = metGE(a);
disp(det)

%przykład 3
a= [1 2 0 0 0 0; 3 4 5 0 0 0 ; 0 8 1 2 0 0; 0 0 2 2 3 0; 0 0 0 2 1 2; 0 0 0 0 3 3];
det = metGE(a);
disp(det)

%przykład 4
a= [1 -2 0 0 0 0; 3 -4 5 0 0 0 ; 0 8 1 2 0 0; 0 0 2 2 3 0; 0 0 0 2 1 2; 0 0 0 0 3 3];
det = metGE(a);
disp(det)
 
%przykład 5
a= [1 -10 0 0 0; 2 -1 -19 0 0  ; 0 2 1 2 0 ; 0 0 2 2 1 ; 0 0 0 1 2];
det = metGE(a);
disp(det)
 
 
%przyklad 1'
a= [1 2 3; 3 4 5];
det = metMINOR(a);
disp(det)

%przyklad 2'
a= [1 2 0; 3 4 5; 0 8 1];
det = metMINOR(a);
disp(det)

%przykład 3'
a= [1 2 0 0 0 0; 3 4 5 0 0 0 ; 0 8 1 2 0 0; 0 0 2 2 3 0; 0 0 0 2 1 2; 0 0 0 0 3 3];
det = metMINOR(a);
disp(det)

%przykład 4'
a= [1 -2 0 0 0 0; 3 -4 5 0 0 0 ; 0 8 1 2 0 0; 0 0 2 2 3 0; 0 0 0 2 1 2; 0 0 0 0 3 3];
det = metMINOR(a);
disp(det)

%przykład 5'
a= [1 -10 0 0 0; 2 -1 -19 0 0  ; 0 2 1 2 0 ; 0 0 2 2 1 ; 0 0 0 1 2];
det = metMINOR(a);
disp(det)

