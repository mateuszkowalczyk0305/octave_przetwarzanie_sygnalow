function psd = sig_psd(x, fs)
  fft = sig_fft_N(x);

  for i = 1 : length(fft);
    psd(i) = (1/(length(x)*fs)) * abs(fft(i))^2;
  endfor
endfunction
