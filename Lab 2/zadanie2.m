time = gen_time(200,10);
x1 = gen_sin(time, 1, 1, 0);
x2 = gen_gauss(time, 10, 1);

#dodawanie
x3 = x1 + x2;
figure(1);
plot(time, x1, "-k;sin;", time, x2, "-r;gauss;", time, x3, "-b;suma;");

#mnozenie
x4 = x1 .* x2;
figure(2);
plot(time, x1, "-k;sin;", time, x2, "-r;gauss;", time, x4, "-b;iloczyn;");

#skladowa stala
x5 = 2*x1;
figure(3);
plot(time, x1, "-r;sin;", time, x5, "-g;po dodaniu skladowej stalej;");

#dodawanie sygnalu przesunietego
x6 = sig_delay_N(x1, 30);
x7 = x1 + x6;
figure(4);
plot(time, x1, "-r;sin;", time, x6, "-g;sin przesuniety;", time, x7, "-b;suma;");
