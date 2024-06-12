fc = 0.5; %częstotliwość odcięcia
d = 1;
BW = 2; #szerokość pasma filtru

[bLPF, aLPF] = iir_onepole_LPF(fc);
[bHPF, aHPF] = iir_onepole_HPF(fc);
[bLPF_tc, aLPF_tc] = iir_onepole_LPF_tc(d);
[bBF, aBF] = iir_narrow_BF(fc, BW);
[bNF, aNF] = iir_narrow_NF(fc, BW);

disp("LPF:");
disp(bLPF);
disp(aLPF);

disp("HPF");
disp(bHPF);
disp(aHPF);

disp("LPF_tc");
disp(bLPF_tc);
disp(aLPF_tc);

disp("BF");
disp(bBF);
disp(aBF);

disp("NF");
disp(bNF);
disp(aNF);

%Kod ten służy do obliczenia i wyświetlenia wartości współczynników a i b
%różnych filtrów IIR dla zadanych parametrów częstotliwości i szerokości pasma.

