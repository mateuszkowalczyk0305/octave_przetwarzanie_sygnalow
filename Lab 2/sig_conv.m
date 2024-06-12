1
function z = sig_conv(x,y)
Nx = length(x);
Ny = length(y);
z = zeros(1,Nx+Ny); #utworzenie pustej tablicy na wynik splotu
for n=1:Nx+Ny-2 # dla każdego elementu tablicy wynikowej
c=0; # zsumuj odpowiednie iloczyny probek sygnalow
for k=0:Ny
if ((n-k)>=1) && ((n-k)<Nx) # jesli pozwalaja na to indeksy probek
c += x(n-k)*y(k); # dodaj do c odpowiedni iloczyn
endif
endfor;
z(n+1) = c; # zapis wyniku w tablicy
endfor;
endfunction
