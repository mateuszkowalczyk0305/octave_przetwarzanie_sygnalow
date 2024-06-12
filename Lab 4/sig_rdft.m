function y=sig_rdft(x)
  N=length(x);
  y=zeros(1,floor(N/2));
  for k=0:floor(N/2)
    Tr=0;
    Ti=0;
    for n=0:N-1
      if(k==0 || k==floor(N/2))
        Tr+=    x(n+1)*cos(2*pi*k*n/N)/N;
        Ti+= -1*x(n+1)*sin(2*pi*k*n/N)/N;
      else
        Tr+=  2*x(n+1)*cos(2*pi*k*n/N)/N;
        Ti+= -2*x(n+1)*sin(2*pi*k*n/N)/N;
      endif
    endfor
    y(k+1) = Tr + 1i * Ti;
  endfor
endfunction

#funkcja oblicza jednostronne DFT sygnalu rzeczywistego
