function det = metMINOR(A)
    %Obliczanie wartości wyznacznika macierzy trójdiagonalnej 
    %zastosowanie metody wykorzystującej zależność pomiędzy minorami
    % Wywołanie: det = metMINOR(A)
    % Wejście: A- macierz trójdiagonalna
    % Wyjście: det - wyznacznik badanej macierzy
    
    if size(A,1) ~= size(A,2) %sprawdzamy przypadek czy została podana macierz kwadratowa
        det = "To nie jest macierz kwadratowa";
        return
    end 
    n = size(A,1);
    d = zeros(n,1); %lista minorów
    d(1) = A(1,1);
    d(2)= A(1,1) * A(2,2) - A(2,1) * A(1,2);
    for i = 3:n
        d(i)= A(i,i) * d(i-1) - A(i,i-1) * A(i-1,i) * d(i-2);
    end
    det = d(n);
    
end
