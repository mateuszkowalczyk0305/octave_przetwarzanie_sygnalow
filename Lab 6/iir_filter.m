function y = iir_filter(b, a, x)
Ma = length(a);#liczba wspolczynnikow a dla sygnalu
Mb = length(b);#liczba wspolczynnikow b dla sygnalu
Nx = length(x);#dlugosc sygnalu
y = zeros(1,Nx);
Sa = 0;
Sb = 0;
for n = 0:(Nx - 1)#petla o dlugosci sygnalu
  for kb = 0:(Mb - 1)#petla obliczajaca wartosc dla wspol b zgodnie ze wzorem
    if(n - kb >= 0)
      Sb = Sb + b(kb + 1) * x(n - kb + 1);
    endif
  endfor
  for ka = 1:(Ma - 1)#petla obliczajaca wartosc dla wspol b zgodnie ze wzorem
    if(n - ka >= 0)
      Sa = Sa + a(ka + 1) * y(n - ka + 1);
    endif
  endfor
y(n + 1) = Sb - Sa;#tworzenie sygnału wyjsciowego, odejmujemy wart od sygnałów a i b
Sb = 0;
Sa = 0;
endfor
endfunction
