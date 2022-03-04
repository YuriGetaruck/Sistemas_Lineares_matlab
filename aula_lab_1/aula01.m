% Aula 01 sistemas lienares 04/03

%%inicializandop codigo
clc %limpa a comand window
clear %limpa as variaveis


%% algoritimo de cramer

M = [1 2 1 ; 1 -3 5 ; 2 -1 3]
b = [12 ; 1 ; 10]

M_x = M
M_x(:,1) = b

M_y = M
M_y(:,2) = b

M_z = M
M_z(:,3) = b

x = det(M_x)/det(M)
y = det(M_y)/det(M)
z = det(M_z)/det(M)



ans = inv(M)*b



