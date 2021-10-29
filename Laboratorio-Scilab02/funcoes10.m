%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
%//
%// ======> Assunto:  Programacao: FUNCOES ==================

clear; clc;
Aluno = 'Daniel Terra Gomes'   %/// <================  COMPLETAR !!!!
%// ==========================> Code start <====================================
%--------//---------
function [a_n, a_n1] = fibonacci_num(n)
a = 0
b = 1;
for i = 1:n-2 %term for n
    c = a + b
    a = b;
    b = c;
end
a_n  = c% nth term
a_n1 = a %(n-1) term
end

fibonacci_num(10)
%--------//---------
%https://www.mathworks.com/matlabcentral/answers/430515-for-loop-for-fibonacci-series
%--------//---------
%-----------------
%// ==========================>  Code end  <====================================

%{

dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;
mprintf('UENF - CCT - LCMAT - Ciencia da Computacao\n');

%//---------------------------
function M = media(x)
   [a, tamanho] = size(x);
   soma=0;
   for i=1:tamanho
     soma = soma + x(i);
   end
   M = soma/tamanho;
endfunction
%//----------------------------

function [f] =fatorial(n)
  k=int(n);
  if k<1 then
     k=1
  end;
  f=1
  for j=1:k
     f=f*j;
  end;
endfunction
%//---------------------------

A = [23 41 70 12 35 52]
m = media(A);

printf('\n Media do Vetor A = %3.1f\n', m);
printf(' minimo do Vetor A = %3.1f\n', min(A));
printf(' Maximo do Vetor A = %3.1f\n', max(A));

f8 = fatorial(8);
printf('\n Fatorial de 8 = %d\n', f8);

printf('\n\n Aluno: %s - Campos/%d/%d/%d %s\n ', Aluno,dt(6),dt(2),dt(1),dd);
disp ('bye...');

%}
