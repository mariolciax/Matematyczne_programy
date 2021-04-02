function spr = test_(n, m)
    %Funkcja generująca macierze, obliczająca ich wyznaczniki za pomocą
    % funkcji wbudowanej det() i porównująca je z wynikami z metGE() lub metMINOR()
    % Wywołanie: spr = test(n, m)
    % Wejście: n- liczba wygenerowanych macierzy trójdiagonalnych do
    % sprawdzenia; 
    % m - wybór metody przez podanie wartosci, w przypadku 0 to met_GE przez podanie 1 to metMINOR 
    % Wyjście: spr - wynik testu w skali od 1 do n
    tol = 1e-14;
    if n <= 0
        spr = "0 macierzy";
        return
    end
    licz = 0;

    if m == 0
        for i = 1:n
            w = randi(30); % wymiar generowanej macierzy
            macierz = full(gallery('tridiag', w, rand(1, w-1), rand(1,w), rand(1, w-1)));  % generowanie takiej macierzy
            if abs(det(macierz) - metGE(macierz)) < tol
                licz = licz + 1;
            end
         end   
    end

    if m == 1
        for i = 1:n
            w = randi(30); % wymiar generowanej macierzy
            macierz = full(gallery('tridiag', w, rand(1, w-1), rand(1,w), rand(1, w-1))); 
            if abs(det(macierz) - metMINOR(macierz)) < tol
                licz = licz + 1;
            end

        end   
    end
    spr = fprintf('Wynik testu: %d  /%d.', licz, n);
end
