time = gen_time(100,5); # generacja tablicy z czasami próbek (N, fs)
x1 = gen_sin(time, 2, 1, 0); # generacja przebiegu sinusoidalnego (fsin, A, fi)
x2 = gen_triangle(time, 1, 1, 1); # generacja impulsu trójkątnego (A, tr, tf)
x3 = gen_delta(time); # generacja delty Kroeneckera (zawsze taka sama)
x3d = sig_delay_N(x3, 3); # opóźniona delta Kroeneckera (sygnał, delay próbek)
x4 = gen_gauss(time, 10, 3) # gaussik (środek u, szerokosc s)
#wykreslenie wygenerowanych sygnalow
figure(1);
plot(time, x1, "o", time, x2, "o"); # sinus i trójkąt na rysunku 1
figure(2);
plot(time, x3, "o", time, x3d, "o"); # ilustracja przesunięcia delty Kroenecke
figure(3);
plot(time, x4, "o"); #generujemy gaussa
