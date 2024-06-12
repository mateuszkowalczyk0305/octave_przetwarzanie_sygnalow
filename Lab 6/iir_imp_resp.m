function [y, t] = iir_imp_resp(b, a, N, fs)
t = gen_time(N,fs);
x = gen_delta(t);
y = iir_filter(b, a, x);
endfunction
