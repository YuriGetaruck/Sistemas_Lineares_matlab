
intervalo=50

n = 0:30

t = 0:0.001:30

x_discreto = cos((pi/2)*n).*exp(-n/2)

x_continuo = cos((pi/2)*t).*exp(-t/2)

figure
hold all

plot(t,x_continuo,'red')
stem(n,x_discreto, 'blue')
