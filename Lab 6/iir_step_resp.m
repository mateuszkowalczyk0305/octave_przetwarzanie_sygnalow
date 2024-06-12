function [y, t] = iir_step_resp(b, a, N, fs)
t = gen_time(N,fs);
x = ones(1,N);
y = iir_filter(b, a, x);
endfunction
