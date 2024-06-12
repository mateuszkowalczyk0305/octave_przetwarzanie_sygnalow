function signal = gen_delta(time)
N = length(time);
signal = zeros(N);
signal(1) = 1;
endfunction
