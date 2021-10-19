// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
// Outubro 2021
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Programacao: FUNCOES ==================

clear; clc;
Aluno = 'Fulano de Tal' ;   /// <================  COMPLETAR !!!!

dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;
mprintf('UENF - CCT - LCMAT - Ciencia da Computacao\n');

//---------------------------
function M = media(x)
   [a, tamanho] = size(x);
   soma=0;
   for i=1:tamanho
     soma = soma + x(i);
   end
   M = soma/tamanho;
endfunction
//----------------------------

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
//---------------------------

A = [23 41 70 12 35 52]
m = media(A);

printf('\n Media do Vetor A = %3.1f\n', m);
printf(' minimo do Vetor A = %3.1f\n', min(A));
printf(' Maximo do Vetor A = %3.1f\n', max(A));

f8 = fatorial(8);
printf('\n Fatorial de 8 = %d\n', f8);

printf('\n\n Aluno: %s - Campos/%d/%d/%d %s\n ', Aluno,dt(6),dt(2),dt(1),dd);
disp ('bye...');    
