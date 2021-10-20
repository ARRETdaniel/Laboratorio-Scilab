%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro, 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl >< L >
%//
%// ======> Assunto:   Primeiro programa - Comandos Basicos

clc;       %// limpa a Janela de comandos
clear;      %//  remove (limpa) as variaveis do ambiente (memoria)

fprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n')
fprintf(' Aluno: Fulano de tal\n\n')

%// Atribuicao23245
%

x = 2;        %// SEM ponto e virgula: mostrar o resultado

y = 3       %// COM ponto e vírgula, NAO mostrar o resultado

z = [ 2 2 3];                    %// vetor

w = [ 4 2 3; 4 5 6; 7 8 9];      %// matriz

s = 'USP'  ;                   %// string

%// Vetores23


v1 = 2:8;

v2 = 2:4:11;

v3 = 1.5:0.4:3.8;

Matricula=input(" Qual e o numero da sua matricula?  : ","string")
fprintf('\n\nO numero de matricula digitado : %s',Matricula);
