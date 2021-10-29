%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
%//
%// ======> Assunto:  Programacao: FOR ==================

clc;
fprintf("UENF - Ciencia da Computacao\n");
fprintf(" Aluno: Daniel Terra Gomes- Campos %s\n", date());

%// ==========================> Code start <====================================


%--------//---------
% 2 Escreva um programa que calcule a soma de N n�meros inteiros consecutivos a partir
%do n�mero X. Ambos, X e N, devem ser lidos do teclado.
N = input(" N nmeros inteiros consecutivos? : ")
X = input("  a partir do n�mero X? : ")
N = 50;
X = 41;
A = X:N;
total = sum(A)
%https://www.mathworks.com/help/matlab/ref/sum.html
%--------//---------
% 3 Utilizando o comando FOR, escreva um programa para calcular o fatorial de um n�mero N
f = factorial(8) %??????????????
x=8;
t=1;
for i=1:x
    t=t*i;
end;
%https://www.youtube.com/watch?v=gFo-k_fDIf8
%--------//---------
%-----------------
%// ==========================>  Code end  <====================================

%//----------- incremento sequencial ------------
%%%for N=2:6:29
%%%  fprintf(" N= %d\n", N);
%%%end
%%%
%%%%//----------- incremento vetorial ------------
%%%for   v  =  [2  4  9]
%%%    x = 3 + v;
%%%    y = 10 * v;
%%%    z = 21 - v;
%%%    vet = [x y z];
%%%    fprintf("X=%d  Y=%d  Z=%d   ==> Maximo=%d  minimo=%d\n",x,y,z,max(vet), min(vet));
%%%end

%//----------- incremento decimal ------------


%%%j=1.0;
%%%k1 = 1:0.8:5
%%%for k = 1:0.8:5
%%%         A(1,j) = k
%%%         A(2,j)= 10*k
%%%         B(k1,j)= 100*k    %// indice somente parte inteira
%%%         j=j+1.0;
%%%end;
%%%A
%%%B
%%%%//----------- incremento Matricial ------------
%%%
%%%for k = [ 1 2 3 4; 10 20 30 40; 100 200 300 400],
%%%    Col = k,
%%%end;
