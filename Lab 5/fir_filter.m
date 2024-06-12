function [y] = fir_filter(x, b)
M = length(b);
N = length(x);
c = 0;
for n=0:N-1
  for k=0:(M-1)
    if((n - k) >= 0)
      c = c + b(k+1) * x(n-k+1);
    endif
  endfor
  y(n+1) = c;
  c = 0;
endfor
endfunction
#zależnosc miedzy pobudzeniem x[n] filtru a jego odpowiedzia y[n]
