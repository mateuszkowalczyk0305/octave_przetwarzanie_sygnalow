
function b = fir_inv(b1)
    % Inwersja filtra dolnoprzepustowego na górnoprzepustowy

    % Odwrócenie znaków współczynników filtra dolnoprzepustowego
    b = -b1;

    % Ustalenie wartości środkowego współczynnika na -1
    mid_index = ceil(length(b)/2);
    %ceil(x) - zwraca najmniejszego int'a nie mniejszego od x
    b(mid_index) = -1;
    %jest funkcją wyliczającą współczynniki b filtra górnoprzepustowego na
    %podstawie znormalizowanych współczynników filtra dolnoprzepustowego b1.
#
endfunction

