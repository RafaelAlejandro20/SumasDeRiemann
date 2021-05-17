%Fecha: 15 de mayo de 2021.
%Nombre: Rafael Alejandro Barajas Urrutia.
%Titulo: 1.3 Sumas de Riemann.
% f (x) = -x + 1 en [-2,3]

syms x
f = @(x) -x + 1
desde = -2
hasta = 3
cant = 500
h = (hasta - desde)/cant

xi = linspace(desde, hasta, cant+2)

for i = 1 : cant+1
    yi(i) = f(xi(i));
end

Rn = h* sum(double(yi(1 : cant)))
Ln = h* sum(double(yi(2 : cant+1)))

ezplot(f,[desde hasta]);
hold on;

plot([xi(1) xi(end)],[0 0],'b')

for i = 1 : cant+1
    if(f(xi(i)) >= 0)
        %Rectangulo inferior
        plot([xi(i) xi(i)],[0 double(f(fminbnd(f,xi(i),xi(i+1))))],'g')
        plot([xi(i) xi(i+1)],[double(f(fminbnd(f,xi(i),xi(i+1)))) double(f(fminbnd(f,xi(i),xi(i+1))))],'g')
        plot([xi(i+1) xi(i+1)],[double(f(fminbnd(f,xi(i),xi(i+1)))) 0],'g')
    
        g = @(x) -f(x);
    
        %Rectangulo superior
        plot([xi(i) xi(i)],[0 double(f(fminbnd(g,xi(i),xi(i+1))))],'r')
        plot([xi(i) xi(i+1)],[double(f(fminbnd(g,xi(i),xi(i+1)))) double(f(fminbnd(g,xi(i),xi(i+1))))],'r')
        plot([xi(i+1) xi(i+1)],[double(f(fminbnd(g,xi(i),xi(i+1)))) 0],'r')
    else
        %Rectangulo inferior
        plot([xi(i) xi(i)],[0 double(f(fminbnd(f,xi(i),xi(i+1))))],'r')
        plot([xi(i) xi(i+1)],[double(f(fminbnd(f,xi(i),xi(i+1)))) double(f(fminbnd(f,xi(i),xi(i+1))))],'r')
        plot([xi(i+1) xi(i+1)],[double(f(fminbnd(f,xi(i),xi(i+1)))) 0],'r')
    
        g = @(x) -f(x);
    
        %Rectangulo superior
        plot([xi(i) xi(i)],[0 double(f(fminbnd(g,xi(i),xi(i+1))))],'g')
        plot([xi(i) xi(i+1)],[double(f(fminbnd(g,xi(i),xi(i+1)))) double(f(fminbnd(g,xi(i),xi(i+1))))],'g')
        plot([xi(i+1) xi(i+1)],[double(f(fminbnd(g,xi(i),xi(i+1)))) 0],'g')
    end
end

integral = int(f,x,desde,hasta);

Error = double(abs(((abs(integral - Rn)/integral))))