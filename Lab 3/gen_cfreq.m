function freq = gen_cfreq(N, fs)
  # funkcja oblicza czestotliwosci fk poszczegolnych skladaowych widma Fourira sygnału real+im
  # na podstawie wzoru fk = k(fs)/N
  # k - parametr generujący zbiór funkcji dla operacji rozkładu
  # fs - częstotliwośc próbkowania
  # N - liczba próbek
  half = floor(N/2);
  freq = zeros(1, N);
  for k = (-1 * half) +1 : half #widmo dla sygnalow od -(N//2) + 1 do (N//2) - jak w instrukcji
    freq(k+half) = k*fs/N; #tablice sa indeksowane od 1 wiec trzeba odpowiednio zwiekszyc k
  endfor
endfunction
