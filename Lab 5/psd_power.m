function P = psd_power(freq, psd)
  integ = trapz(freq, psd.^2);
  P = integ/length(psd);
endfunction
