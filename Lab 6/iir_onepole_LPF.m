function [b, a] = iir_onepole_LPF(fc)
x = exp(-2 * pi * fc);
b(1) = 1 - x;
a(1) = 1;
a(2) = -x;
endfunction
%implementuje filtr IIR (nieskończenie długi odpowiedzi impulsowej)
%typu jednopolowego (one-pole) o charakterystyce dolnoprzepustowej (LPF)
