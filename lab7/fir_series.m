
function b = fir_series(b1, b2)
    % Szeregowe połączenie dwóch filtrów

    % Obliczenie długości wynikowego filtra
    len = length(b1) + length(b2) - 1;

    % Konwolucja (połaczenie/splot) współczynników filtrów
    b = conv(b1, b2);

    % Ucięcie wynikowych współczynników do oczekiwanej długości
    b = b(1:len);

   % jest funkcją wyliczającą współczynniki b filtra, którego charakterystyka
   % częstotliwościowa  odpowiada szeregowemu połączeniu filtrów o współczynnikach b1 i b2.

   % uzyskujemy pasmowoprzepustowy
endfunction
