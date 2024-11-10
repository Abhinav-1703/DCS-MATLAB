A = 5;F = 2;
t = 0:0.001:1;
n1 = A*sin(2*pi*F*t);
subplot(3,1,1)
plot(t,n1)
xlabel('time')
ylabel('n1')
title('CTS')
FS = 6*F;
TS = 1/FS;
n = FS;
n2 = 0:TS:n*TS;
xs = A*sin(2*pi*F*n2);
subplot(3,1,2)
stem(n2,xs)
xlabel('samples(n2)')
ylabel('xs')
title('DTS')
t1 = linspace(0,max(n2));
xr = interp1(n2,xs,t1,"spline");
subplot(3,1,3)
plot(t1,xr)
xlabel('time')
ylabel('xr')
title('Reconstruction signal')
