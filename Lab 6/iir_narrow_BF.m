function [b, a] = iir_narrow_BF(fc, BW)
R = 1 - 3 * BW;
K = (1 - 2 * R * cos(2 * pi * fc) + R * R) / (2 - 2 * cos(2 * pi * fc));
b(1) = 1 - K;
b(2) = 2 * (K - R) * cos(2 * pi * fc);
b(3) = R * R - K;
a(1) = 1;
a(2) = -2 * R * cos(2 * pi * fc);
a(3) = R * R;
endfunction
%Ta funkcja implementuje filtr IIR o wąskim paśmie (narrow-band)
%typu pasmowoprzepustowego (band-pass filter).
