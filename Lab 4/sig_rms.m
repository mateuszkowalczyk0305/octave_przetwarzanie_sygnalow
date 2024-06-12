function rms = sig_rms(domain, x)
integral = trapz(domain, x.^2);
T = max(domain) - min(domain);
rms = integral / T;
rms = sqrt(rms);
endfunction
