function z = sig_conv(x, y)
  Nx = length(x);
  Ny = length(y);
  z = zeros(1, Nx + Ny - 1); % utworzenie pustej tablicy na wynik splotu
  for n = 1:Nx + Ny - 1 % dla każdego elementu tablicy wynikowej
    c = 0; % zsumuj odpowiednie iloczyny probek sygnalow
    for k = 1:Ny
      if (n - k + 1 > 0) && (n - k + 1 <= Nx) % jesli pozwalaja na to indeksy probek
        c = c + x(n - k + 1) * y(k); % dodaj do c odpowiedni iloczyn
      endif
    endfor
    z(n) = c; % zapis wyniku w tablicy
  endfor
endfunction
