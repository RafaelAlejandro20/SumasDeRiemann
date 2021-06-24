%Titulo: Sumas inferiores de Riemann.
%Nombre: Rafael Alejandro Barajas Urrutia.
%Grupo: 3202.
%Fecha: 23 de mayo de 2021.
%Desarrollar las sumas de las siguientes funciones.

clc
clear

function [int]=SumasInferioresRafaelAlejandroBarajasUrrutia3202(fun,a,b,m)
  func=inline(fun);
  incx=(b-a)./m;
  x = a:incx:b;
  A=0;
  
  fplot(fun);
  for i = 1:m
    A =A + abs(incx * (func(a -(i * incx))));
  endfor
  disp('      Sumas inferiores de Riemann.')
  disp('________________________________________');
  disp(['Riemann Sum Inf: ', num2str(A)]);