
x = trapezio(50,123, 67)
stem(x)


function x=trapezio(A,B,N)

subida = (1:B)*A/B
reta = A*ones


x = [0 1:B*A/B A*ones(1,N) flip(1:B*A/B) 0]

end
