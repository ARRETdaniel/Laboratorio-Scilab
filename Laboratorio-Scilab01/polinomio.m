%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro, 2021
%//
%%// Para executar desde o editor SciNotes:   < Ctrl >< E >
%//
%// ======> Assunto: Polinomios ==================

clc; clear;
fprintf("UENF - Ciencia da Computacao\n");
fprintf("Aluno: Daniel Terra Gomes - Campos% s", date());


%p = poly([1 3],'x')   %// polinomio em x com duas raizes p(x)=(x-1)(x-3)
%q = poly([2 -1 0],'s')  %//  q(s) = (s-2)(s+1)s   ; tres raizes 2,-1,0

%t= poly([ 2 3 4],'x','c') %// polinomio com coeficientes 2, 3 e 4

%raizesq = roots(q)    %// raizes do polinomio q

%================================================================
%u = 3, -4, 1

a = poly(roots(3)) % Polynomial roots, specified as a vector. Polynomial with specified roots or characteristic polynomial
b = poly(roots(-4))
c = poly(roots(1))
% https://www.mathworks.com/help/matlab/ref/poly.html
%================================================================
t = 2
p = (5*(t^3)) + ((2*t) -7)
%================================================================

disp("Execução terminada...");
