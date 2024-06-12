function avg = sig_avg(domain, x)
integral = trapz(domain,x);
avg = integral/length(x);
endfunction
