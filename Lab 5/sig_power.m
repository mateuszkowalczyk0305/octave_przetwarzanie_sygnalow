function p = sig_power(domain, x)
integral = trapz(domain, x.^2);
T = max(domain) - min(domain);
p = integral/T;
endfunction
