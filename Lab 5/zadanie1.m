N = 15;
fs = 5;
M = 15; # liczba współczynników filtru SOI
b = (1:5);
time = gen_time(N,fs); #generaacja czasu próbki

skok = ones(1,N); #tablica samych jedynek - skok jednostkowy

delta = gen_delta(time); #generacja delty Kroeneckera

y_delta = fir_filter(delta,b); #wywołanie filtracji sygnału o współczynnikach z tablicy b
y_skok = fir_filter(skok,b); #wywołanie filtracji sygnału o współczynnikach z tablicy b

figure(1);
stem(time,y_delta);
title("Wykres delty Kroeneckera po filtracji");
figure(2);
stem(time,y_skok);
title("Wykres skoku jednostkowego po filtracji");
