%%Atividade 01

clear
clc
close all

senoslegais(2,3,2,30,15,0,3,0)  %chama funcao da questao 1

figure                          %segunda figura
hold all

n = 1:0.001:10                  %variavel funcao

X = awgn ((3*sin(3*n+2)), 5)    %sinal com ruido
plot(n,X,'red')                 %plot sinal com ruido

Y = mediamovel(20,X)            %chama a funcao da questao 2
ni = n(1:length(Y))             %limita Y ate o intervalo calculado

plot(ni,Y,'blue')               %plota o sinal filtrado


%% ETAPA 1

function senoslegais(A,B,C,D,Ab,Bb,Cb,Db)

% a)
A %= 2 %amplitude
B %= 3 %desloc vert
C %= 2 %frequecia por seg
D %= 30 %defasagem em graus
t = 0:0.0001:3

Xa = A*sin(2*pi*C*t+D)+B

% b)

Ab %= 15
Bb %= 0
Cb %= 3
Db %= 0

Xb = Ab*sin(2*pi*Cb*t)+B

figure
hold all

plot(t,Xa,"red")
plot(t, Xb, "k--")

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