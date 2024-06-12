function y = sig_fft(x)
N=length(x);
z=zeros(1,N);
z = fft(x)/N;
for k=0:(floor(N/2))
  u(k + floor(N/2)+1) = z(k+1);
endfor
for i=(floor(N/2)+1):floor(N)
  u(i - floor(N/2)) = z(i);
endfor
for j =1:floor(N)
  y(j) = u(j + 1);
endfor

endfunction
