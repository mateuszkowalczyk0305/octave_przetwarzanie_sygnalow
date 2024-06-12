b1 = [0.5, 0.7, 0.9];
b2 = [0.2, 0.3, 0.1, 0.4];

b_inv = fir_inv(b1);
b_series = fir_series(b1, b2);
b_parallel = fir_parallel(b1, b2);

disp("Współczynniki filtru górnoprzepustowego (fir_inv):");
disp(b_inv);

disp("Współczynniki filtru szeregowego (fir_series):");
disp(b_series);

disp("Współczynniki filtru równoległego (fir_parallel):");
disp(b_parallel);
