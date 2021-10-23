%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
%//
%// ======> Assunto:  Programacao:  IF-THEN-ELSE ================

clc;
fprintf("\n UENF-CCT-LCMAT-Ciencia da Computacao\n");
fprintf(" Aluno: Daniel Terra Gomes - Campos %s\n\n", date());
%// ==========================> Code start <====================================
%Arquivo 08-ifthen.sce
%Fazer um programa que diga se o número digitado é par ou ímpar. Utilize a função modulo(n,m) (Use o Help, F1 para ver a função).

%--------//---------
m=input('Digite numero para teste de par ou impar')
if mod(m,2) == 1
   fprintf('\n impar\n')
else
fprintf('\n par\n')
end
% For odd numbers, the remainder will be 1
%and for even, it will be 0
%--------//---------
%https://www.mathworks.com/matlabcentral/answers/264769-odd-and-even-numbers
%--------//---------
%-----------------
%// ==========================>  Code end  <====================================

%{
i=1;
for j = 1:3,
  if i == j then
        V(i,j) = 2
      elseif abs(i-j) == 1 then
          V(i,j) = i-j
          else V(i,j) = i+j
   end,    %// do if
   mprintf(" V(%d,%d) = %d\n",i,j,V(i,j))
end   %// do for

%//-------------------------------------------
valor = input('Digite um número qualquer : ');
if  valor < 45
   a = valor + 45;
   b = 45 - valor;
   disp( 'O valor digitado foi MENOR que 45')
   mprintf("\n a = %d (valor+45) \n b = %d (45-valor)\n", a, b)
end

if  valor > 45
   a = valor + 50;87
   b = 50-valor;
   disp('O valor digitado foi MAIOR que 45')
   mprintf("\n a = %d (valor+50) \n b = %d (50-valor)\n", a, b)
end

disp('Execucao terminada...');
%}
