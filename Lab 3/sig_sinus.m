function y = sig_sinus(f, A, phi, N, Fs)
  % f - częstotliwość sygnału
  % A - amplituda sygnału
  % phi - faza sygnału
  % N - liczba próbek
  % Fs - częstotliwość próbkowania
  t = (0:N-1)/Fs; % wektor czasu
  y = A * sin(2*pi*f*t + phi); % sygnał sinusoidalny
endfunction
