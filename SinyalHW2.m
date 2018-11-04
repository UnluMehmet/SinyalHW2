%Sinyal Sorular 

%1.Soru A)
clc
close all
fs = 100000;
f=100
t = 0:1/fs:7.5;
x1 = sawtooth(2*pi*f*t);
subplot(2,1,1)
plot(t,x1)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')
grid on


%1.Soru B)
clc
close all
fs = 1000000;
f=20
t = 0:1/fs:7.5;
x2 = square(2*pi*f*t);
subplot(2,1,2)
plot(t,x2)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')
grid on


%1.Soru C)
clc
close all
fs = 100000;
t = -1:1/fs:7.5;
x1 = tripuls(t,100e-3);
subplot(2,1,1)
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')
grid on


%1.Soru D)
clc
close all
fs = 10000;
t = -1:1/fs:7.5;
x2 = rectpuls(t,50e-3);
subplot(2,1,2)
plot(t,x2)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')


%1.Soru E)
clc
close all
fs=10000000
f=5000
tc = gauspuls('cutoff',50e3,0.5,[],-60); 
t1 = -tc : 1e-6 : tc; 
y1 = gauspuls(t1,50e3,0.5);
plot(t1*1e3,y1)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse')


%1.Soru F)
clc
close all
fs = 200e9;                    
D = [2.5 10 17.5]' * 1e-9;    
t = 0 : 1/fs : 2500/fs; 
w = 2e-9;               
yp = pulstran(t,D,@rectpuls,w);
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.8.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
plot(t*1e9,yp);
axis([0 25 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')


%1.Soru G)
clc
close all
fs = 50e6;                 
D = [2.5 10 17.5]' * 1e-3;     
t = 0 : 1/fs : 2500/fs;       
w = 2e-9;              
yp = pulstran(t,D,@rectpuls,w);
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.8.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
plot(T*1e3,Y)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse Train')


%3.Soru
clc
close all
fs=1e3 %fs=1 kHz
f=20 %20 Hz
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',1)
us2=cos(2*pi*f*t)
subplot(2,1,2)
plot(t,us2,'LineWidth',2)
grid on



%4.Soru
clc
close all
t=-10:1:10
result=t.*(t.^2+3)
g_even=(g(t)+g(-t))/2
g_odd=(g(t)-g(-t))/2
subplot(2,1,1)
plot(t,g_even)
title('even')
subplot(2,1,2)
plot(t,g_odd)
title('odd')

%4.Soru G.M
function result=g(t)
result=t;
end

%5.Soru
clc
clear all
N=50:1:100
x=(0.9.^abs(N)).*sin(2*pi*N/4)
sum(abs(x.^2))


%soru 6
clc
clear all
f=1000
fs=2000
t1=0:1/fs:5
x1=sin(2*pi*f*t1)
subplot(4,1,1)
plot(t1,x1)
title('Sinüs')
fs1=50000
t2=0:1/fs1:5
x2=sin(2*pi*f*t2)
subplot(4,1,2)
plot(t2,x2)
title('Sinüs')
fs2=2000
t3=0:1/fs2:5
y1=cos(2*pi*f*t3)
subplot(4,1,3)
plot(t3,y1)
title('Cosinüs')
fs3=50000
t4=0:1/fs3:5
y2=cos(2*pi*f*t4)
subplot(4,1,4)
stem(t4,y2)
title('Cosinüs')

