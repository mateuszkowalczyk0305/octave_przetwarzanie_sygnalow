N = 501; #liczba próbek
fs = 100; #czestotliwosc probkowania
d = 2;
fc = 0.01; #częstotliwość odcięcia
BW = 0.05; #szerokość pasma filtru

%b = [0.75];
%a = [1, -0.25];

[b, a] = iir_onepole_LPF(fc); %implementuje filtr IIR (nieskończenie długi odpowiedzi impulsowej)
                               %typu jednopolowego (one-pole) o charakterystyce dolnoprzepustowej (LPF)

%[b, a]  = iir_onepole_HPF(fc); % implementuje filtr IIR (nieskończenie długi odpowiedzi impulsowej)
                                %typu jednopolowego (one-pole) o charakterystyce górnoprzepustowej (HPF)

%[b, a]  = iir_onepole_LPF_tc(fc);

%[b, a] = iir_narrow_BF(fc, BW);  %Ta funkcja implementuje filtr IIR o wąskim paśmie (narrow-band)
                                  %typu pasmowoprzepustowego (band-pass filter).

#[b, a] = iir_narrow_NF(fc, BW);  %Ta funkcja implementuje filtr IIR o wąskim paśmie (narrow-band) typu pasmozaporowego

[y_imp,t_imp] = iir_imp_resp(b, a, N, fs);
[y_step,t_step] = iir_step_resp(b, a, N, fs);
[mH, fiH, mHdB, f] = iir_freq_resp(b, a, N, fs);

figure(1);
plot(t_imp,y_imp);
title("Wykres odpowiedzi impulsowej");
figure(2);
plot(t_step,y_step);
title("Wykres odpowiedzi skokowej");
figure(3);
plot(f,mH);
title("Wykres odpowiedzi amplitudowej liniowej");
figure(4);
plot(f,mHdB);
title("Wykres odpowiedzi amplitudowej w [dB]");
