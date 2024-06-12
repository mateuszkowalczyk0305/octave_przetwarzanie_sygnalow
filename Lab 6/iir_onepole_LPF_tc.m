function [b, a] = iir_onepole_LPF_tc(d)
x = exp(-1 / d);
b(1) = 1 - x;
a(1) = 1;
a(2) = -x;
endfunction
%wyznacza współczynniki dolnoprzepustowego filtru jednobiegunowego o stałej
%czasu narostu wynoszącej d próbek.
