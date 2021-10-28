%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
%//
%// ======> Assunto:  SELECT-CASE ==================

clear; clc;

Aluno = ('Daniel Terra Gomes\n') ;   %/// <================  COMPLETAR !!!!

fprintf(" UENF-CCT-LCMAT-Ciencia da Computacao %s \n", Aluno);
%// ==========================> Code start <====================================
%--------//---------
%Escreva um programa menu.sci que realize uma operação de soma, produto, divisão ou subtração de dois números,
% dependendo da opção digitada
num = input("type a number\n")
num1 = input("type another number\n")
options = input("options type 1 , 2 , 3 , 4\n")

switch options
    case 1
        result =   num+num1
    case 2
        result =   num-num1
    case 3
        result =   num*num1
    case 4
        result =   num/num1
    otherwise
      warning('Unexpected type. No case created.\n')
end
%https://www.mathworks.com/help/matlab/ref/switch.html
%https://www.mathworks.com/matlabcentral/answers/5718-use-of-break-in-switch-statement
%--------//---------

%--------//---------
%-----------------
%// ==========================>  Code end  <====================================

%{

dia = 5;
printf('\n\n');
while (dia > 0 & dia < 7)
   dia = input('  Que dia voce fez o trabalho? (1-7) : ');
   select  dia
       case 1 then
           mprintf('    Foi um fim de semana ..!\n\n');
       case 2  then
          mprintf('      Foi no horario de aula ?\n\n');
       case 3  then
          mprintf('      Foi no horario de aula ?\n\n');
       case 5  then
          mprintf('      Foi no horario de aula ?\n\n');
       case 4  then
          mprintf('      Nao. Quarta-feira foi dia feriado\n\n') ;
       case 6  then
          mprintf('      Na Sexta Feira 13...\n\n');
       else
          break
   end;   %//   select

end ;    %//  while
printf('\n\n Aluno: %s - Campos/%d/%d/%d %s\n ', Aluno,dt(6),dt(2),dt(1),dd);
disp ('bye...');

}%
