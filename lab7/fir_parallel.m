
function b = fir_parallel(b1, b2)
    % Równoległe połączenie dwóch filtrów

    % Do zmiennej len przypisujemy obliczenie długości wynikowego filtra
    len = max(length(b1), length(b2));

    % Wypełnienie zerami współczynników filtrów do tej samej długości
    b1 = [b1, zeros(1, len - length(b1))];
    b2 = [b2, zeros(1, len - length(b2))];

    % Dodanie współczynników filtrów
    b = b1 + b2;
    %jest funkcją wyliczającą współczynniki b filtra,
    %którego charakterystyka częstotliwościowa odpowiada równoległemu
    %połączeniu filtrów o współczynnikach b1 i b2.

    % uzyskujemy pasmowozaporowy
endfunction
