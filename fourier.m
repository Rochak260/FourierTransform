%By Rochak Rijal

Fs = 1000;
Ts = 1/Fs;
dt = 0:Ts:2-Ts;
f1 = 20;
f2 = 50;
f3 = 70;

y1 = 10*sin(2*f1*dt*pi); %three different waves
y2 = 10*sin(2*f2*dt*pi);
y3 = 10*sin(2*f3*dt*pi);
y4 = y1+y2+y3;

subplot(4,1,1);
plot(y1);
subplot(4,1,2);
plot(y2);
subplot(4,1,3);
plot(y3);

nfft = length(y4);
nfft2 = 2^nextpow2(nfft);
ff = fft(y4,nfft2);
fff = ff(1:nfft2/2);
subplot(4,1,4);
plot(abs(fff));



