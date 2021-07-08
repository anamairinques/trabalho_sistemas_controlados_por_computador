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

figure(2)
%rlocus(g);

