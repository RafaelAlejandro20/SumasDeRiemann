% T�tulo: Modelos Matematicos - Ejercicio 3.
% Descripci�n: Scrip para graficar y sacar dominio y rango.
% Autor: Rafael Alejandro Barajas Urrutia.
% Fecha: 15 de abril de 2021.

% limpiar variables
clear
% Ejemplo y=2-v(4x-2)
% Rango de -10..10 en i = 1
x = -10: 0.1 : 10 ;
% Valor de la funci�n
y=nthroot(2*(x),5);
% Dibujar x, y
plot (x, y);
% Titulo
title ( "y=v(5&2x)" );
% Etiqueta para x
xlabel ( " x " );
% Etiqueta para y
ylabel ( " f (x) " );