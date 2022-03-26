%%Atividade 01

clear
clc
close all

senoslegais(2,3,2,30,15,0,3,0)  %chama funcao da questao 1

figure                          %segunda figura
hold all

n = 1:0.001:3                   %variavel funcao

X = awgn ((10*sin(10*n+2)), 1)  %sinal com ruido
plot(n,X,'--red')               %plot sinal com ruido

Y = mediamovel(20,X)            %chama a funcao da questao 2
ni = n(1:length(Y))             %limita Y ate o intervalo calculado

plot(ni,Y,'blue')               %plota o sinal filtrado

xlabel('t')
ylabel('X(t) e Y(t)')
title('Grafico de sinal com ruido e filtrado por media movel')
legend('SinalR', 'SinalF')


%% ETAPA 1

function senoslegais(A,B,C,D,Ab,Bb,Cb,Db)

% a)

t = 0:0.0001:3

Xa = A*sin(2*pi*C*t+D)+B

% b)

Xb = Ab*sin(2*pi*Cb*t+Db)+Bb

figure
hold all

plot(t,Xa,"red")
plot(t, Xb, "k--")
xlabel('X label')
ylabel('Y label')
title('Graph 1')

end



%% ETAPA 02



function Y=mediamovel(N,X)
    auxA = 0
    W = length(X)

    for i=1:1:W-N
        for j=i:i+N 
            auxA = auxA + X(j);
        end    
        Y(i)=auxA/N;
        auxA=0
    end
end
