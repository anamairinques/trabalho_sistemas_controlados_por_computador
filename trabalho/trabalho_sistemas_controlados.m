%Sistemas controlados por computador
%ERE 2021.1
%Ana Marina Mairinques Vaz Brandão
%Gleyzer Lucas de Paula Laia

clc
clear all
close all


s = tf('s');
num = 2;
den = [50 15 1];
g = tf(num,den,'InputDelay',1)

figure(1)
step(g);

[z,p,k] = tf2zp(num,den);
%fvtool(num,den,'polezero')
figure(2);  
zplane(z,p);
text(real(z)+.1,imag(z),'Zero')
text(real(p)+.1,imag(p),'Polo')

gd = c2d(g,0.1,'zoh'); %o segundo parâmetro em vazio
                     %é o "sample time" e
                     %deve ser determinado para ter
                     %10 amostras por constante de 
                     %tempo


