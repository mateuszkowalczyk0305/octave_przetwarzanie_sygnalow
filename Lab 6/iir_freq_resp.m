function  [mH, fiH, mHdB, f] = iir_freq_resp(b, a, N, fs)
fc = gen_cfreq(N,fs);
x = iir_imp_resp(b, a, N, fs);
mH_F = abs(sig_fft_N(x));
for k=1:ceil(N/2)
  mH(k) = mH_F(k + floor(N/2));
  f(k) = fc(k + floor(N/2));
endfor
mHdB = 20 * log10(abs(mH));
fiH = 1;
endfunction
%mH- odpowiedź amplitudowa liniowa, mHdB- odpowiedź amplitudowa w dB,
%fiH- odpowiedź fazowa z fazą rozwiniętą,
%f- wspólna oś odciętych/pozioma wszystkich odpowiedzi częstotliwościowych
