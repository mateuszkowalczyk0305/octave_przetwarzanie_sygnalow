clear all;
pkg load signal;

N = 100;
fs = 25.5;


freq = gen_cfreq(N, fs);
time = gen_time(N,fs);

N_okres1 = 5;
N_okres2 = 2;
fi = 0;
amp1 = 1
amp2 = 3
fsin1 = 75;
fsin2 = 25.5;


%sinus

x = gen_sin(time,fsin1,amp1,fi);
y = gen_sin(time,fsin2,amp2,fi);



%addytywnosc

sygnal_x = sig_fft(x);
sygnal_y = sig_fft(y);
suma = x + y;
widmo_przeddodaniem = sygnal_x + sygnal_y;
widmo_pododaniu = sig_fft(suma);

figure(1);
plot(time,suma);
xlabel('Częstotliwosc')
ylabel('Amplitiuda')

figure(2);
stem(freq, abs(widmo_pododaniu)); #przed zokienkowaniem
xlabel('Częstotliwosc')
ylabel('Magnituda')


hamming = hamming(N)';
splot = sig_conv(widmo_pododaniu, hamming);



wynik = zeros(1, N);
for i = 1 : N;
  wynik(i) = hamming(i) * suma(i);
endfor



figure(3);
plot(wynik);

widmo_wynik = sig_fft(wynik);
figure(6);
stem(freq,abs(widmo_wynik));

averange = sig_avg(time, suma);
power = sig_power(time, suma);
rms = sig_rms(time, suma);
rms_1 = 0.7 * amp1;
rms_2 = 0.7 * amp2;

rms_x = sqrt(rms_1^2 + rms_2^2);


