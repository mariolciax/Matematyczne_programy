function det = metGE(A)
    %Obliczanie wartości wyznacznika macierzy trójdiagonalnej 
    %zastosowanie metody eliminacji Gaussa (GE)
    % Wywołanie: det = metGE(A)
    % WEJ: A- macierz trójdiagonalna
    % Wyj: det - wyznacznik badanej macierzy
    if A(1,1) == 0
        det = "Metoda nie jest wykonalna";
        return
    end 

    if size(A,1) ~= size(A,2) %sprawdzamy przypadek czy została podana macierz kwadratowa
        det = "To nie jest macierz kwadratowa";
        return
    end 

    n = size(A,1);
    B = A;

    for j = 2 : n  % wiersze
        wsp = B(j, j-1)/B(j-1, j-1); %obliczam wspólczynnik
        %for i = 1 : n  %kolumny  
            B(j, 1 : n) = B(j, 1 : n) - wsp .* B(j-1, 1 : n); % od każdego elementu z wiersza j odejmuje element z wiersza j-1 
        %end
    end
    det = 1;
    for i=1:n  % liczymy wyznacznik
        det = det * B(i, i);
    end 
end
