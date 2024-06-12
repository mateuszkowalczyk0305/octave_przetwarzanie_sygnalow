function [b, a] = iir_onepole_HPF(fc)
x = exp(-2 * pi * fc);
b(1) = (1 + x) / 2;
b(2) = -(1 + x) / 2;
a(1) = 1;
a(2) = -x;
endfunction
% implementuje filtr IIR (nieskończenie długi odpowiedzi impulsowej)
% typu jednopolowego (one-pole) o charakterystyce górnoprzepustowej (HPF)
