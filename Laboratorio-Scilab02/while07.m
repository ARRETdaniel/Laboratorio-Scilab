%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
%//
%// ======> Assunto:  Programacao: WHILE

clear; clc;
fprintf("UENF - Ciencia da Computacao\n");
fprintf(" Aluno: Daniel Terra Gomes - Campos %s\n\n", date());

%// ==========================> Code start <====================================
%--------//---------
K = input("type limit")
sum = 1;
N = 0;
while (sum <= K)
   sum = sum + N;
   N = N + 1;
end

fprintf("menor value %f \n", N-1);
%--------//---------

%--------//---------
%-----------------
%// ==========================>  Code end  <====================================

%{

mm=[];
m = 100;
while  m > 0
  a  = m *3;
  mm =[mm m]
  m = m-28;
end


k= 3;0

j=1;
while (k< 30)
   A(j) = k+0.3;
   j=j+1;
   k=k+5;
end;

A

fprintf("\n SOMA de varios numeros...:\n\n");
n=0;
x=1;
soma=0;
while (x > 0)
   x=input('Digite um numero entre 1 e 50 (0 para terminar): ');
   soma=soma + x;
   n=n+1;
end;

fprintf("\n A soma dos %d valores ingressados  = %d\n",n-1,soma)

}%
