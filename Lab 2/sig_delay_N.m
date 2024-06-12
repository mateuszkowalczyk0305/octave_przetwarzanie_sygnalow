function y = sig_delay_N(x, Nd)
N = length(x);
y = zeros(1, N);
for i=1:N-Nd-1
y(i+Nd) = x(i);
endfor
endfunction
