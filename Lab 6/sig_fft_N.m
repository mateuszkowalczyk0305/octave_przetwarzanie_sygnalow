function y = sig_fft_N(x)
N=length(x);
z=zeros(1,N);
z = fft(x);
if (mod(N,2) == 0)
for k=1:N/2
  y(k + N / 2) = z(k);
endfor
for i=(N / 2 + 1):N
  y(i - N / 2) = z(i);
endfor
elseif (mod(N,2) == 1)
for k=0:(floor(N/2))
  y(k + floor(N/2) + 1) = z(k + 1);
endfor
for i=(ceil(N/2)+1):ceil(N)
  y(i - ceil(N/2)) = z(i);
endfor
endif

endfunction
