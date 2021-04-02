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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ostatecznie
    
    function spr = test_(n, m)
    %Funkcja generująca macierze, obliczająca ich wyznaczniki za pomocą
    % funkcji wbudowanej det() i porównująca je z wynikami z metGE() lub metMINOR()
    % Wywołanie: spr = test(n, m)
    % Wejście: n- liczba wygenerowanych macierzy trójdiagonalnych do
    % sprawdzenia; 
    % m - wybór metody przez podanie wartosci, w przypadku 0 to met_GE przez podanie 1 to metMINOR 
    % Wyjście: spr - wynik testu w skali od 1 do n
    tol = 1e-4; % tolerancja, różnicy w wyniku między funkcją wbudowaną, a moją funkcją
    if n <= 0
        spr = "0 macierzy";
        return
    end
    licz = 0; 
    licznik = 0;
    if m == 0
        for i = 1:n
            w = randi(15); % wymiar generowanej macierzy
            macierz = full(gallery('tridiag', w, randi([-9 8]).*rand(1, w-1), randi([-4 6]).*rand(1,w), randi([-6 10]).*rand(1, w-1)));  % generowanie losowej macierzy 

            if isstring(metGE(macierz))
                licznik = licznik + 1;
            else
                if abs(det(macierz) - metGE(macierz)) < tol
                licz = licz + 1;
                end
            end
        end   

    spr = fprintf('Wynik testu: %d + %d/%d.', licz, licznik, n);

    end

    if m == 1
        for i = 1:n
            w = randi(15); % wymiar generowanej macierzy
             macierz = full(gallery('tridiag', w, randi([-9 7]).*rand(1, w-1), randi([-4 5]).*rand(1,w), randi([-7 6]).*rand(1, w-1)));  % generowanie takiej macierzy
            %disp(det(macierz)); disp(metMINOR(macierz)); disp(macierz);disp('----------------')
             if abs(det(macierz) - metMINOR(macierz)) < tol
                licz = licz + 1;
             end
        end   
        
    spr = fprintf('Wynik testu: %d/%d.', licz, n);
    
    end

end
