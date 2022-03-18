%% Aula pratica 18/03

clear all
clc
clear

%%
intervalo = 30

n = 0:intervalo

t = 0:0.1:intervalo

m = 15

w = 15*pi*n/8

x_discreto = cos(m*n)

x_continuo = cos(m*t)


figure
hold all
stem(n,x_discreto, "filled", "r")
plot(t,x_continuo, "--k")
xlabel("n")
ylabel('x[n]')
legend({'Discreto'},{'Continuo'})

