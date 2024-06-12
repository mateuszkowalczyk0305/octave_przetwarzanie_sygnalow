function freq = gen_cfreq(N, fs)
  freq = zeros(1, N);

  for k = floor(-N/2+1):floor((N/2))
    freq(k + floor(N/2)) = k * (fs/N);
  endfor
endfunction

