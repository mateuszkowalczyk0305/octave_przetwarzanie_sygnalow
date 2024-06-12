function freq = gen_cfreq(N, fs)
  freq = zeros(1, floor(N/2));
  for k = (floor((N / 2) + 1)):(floor(3 * N / 2))
    freq(k - floor(N / 2)) = ((k-N) * fs) / N;
  endfor
endfunction
