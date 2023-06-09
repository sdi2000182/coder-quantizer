
%gia to erwthma 3 
clear;
Ts=0.01;
t=0:Ts:1;
x=4*cos(2*pi*t); 

[d1,y1,e1] = quantizer1000(x,7); 
y1(1) = y1(2); 
y1(end) = y1(end-1);
z1 = coder1(y1,7);

[d2,y2,e2] = quantizer1000(x,8);
y2(1) = y2(2);
y2(end) = y2(end-1);
z2 = coder1(y2,8);
N=size(z1,1);
s1=unique(z1);
s2=unique(z2);

%stairs(z1-'0','r','linewidth',2);
figure;
subplot(222);
stairs([z1,z1(end)]);
subplot(221);
stem(t,y1); 
hold on;
plot(t,x,t,e1,'color','r');
title('Levels=7');
subplot(224);
stairs([z2,z2(end)]);
subplot(223);
stem(t,y2);
hold on;
plot(t,x,t,e2,'color','r');
title('Levels=8');