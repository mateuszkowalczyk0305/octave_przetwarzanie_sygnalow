function freq = gen_rfreq(N, fs)
  # funkcja oblicza czestotliwosci fk poszczegolnych skladaowych widma Fourira sygnału re
  # na podstawie wzoru fk = k(fs)/N
  # k - parametr generujący zbiór funkcji dla operacji rozkładu
  # fs - częstotliwośc próbkowania
  # N - liczba próbek
  half = floor(N/2);
  freq = zeros(1, half);
  for k = 1:half
    freq(k+1) = k*fs/N;
  endfor
endfunction
