%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro, 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl >< E >
%//
%// ======> Assunto:  MATRIZES ==================

clc; clear;
fprintf('UENF - Ciencia da Computacao\n');
fprintf("Aluno: Daniel Terra Gomes %s ", date());

%==================
test1 = zeros(5) % X = zeros(n) returns an n-by-n matrix of zeros.
test2 = zeros(5,5) %  zeros(2,3) returns a 2-by-3 matrix.

%=================
% 9 Criar matrizes 4x3 de n�meros inteiros:  A, B, C e D e a partir delas, criar a matriz M = [A B C; D A B]

A = 1*ones(4,3) % C = 2*ones(1,3) same as C = [2 2 2; 2 2 2]
B = 2*ones(4,3) % C = 2*ones(1,3) same as C = [2 2 2; 2 2 2]
C = 3*ones(4,3) % C = 2*ones(1,3) same as C = [2 2 2; 2 2 2]
D = 4*ones(4,3) % C = 2*ones(1,3) same as C = [2 2 2; 2 2 2]
M =  [A B C; D A B]     %// matriz

%=================

N = 8*rand(6,6) % C = 2*ones(1,3) same as C = [2 2 2; 2 2 2]
fprintf("N(3,4)  %f \n", N(3,4)); % Pega dado em (3,4)
fprintf("N(:, 5)  %f \n", N(:, 5));% Pega coluna 5
fprintf(" N(3,:)  %f \n", N(3,:)); % Pega linha 3
fprintf(" N(2:4, 4:6) %f \n", N(2:4, 4:6)); % Pega (2:4, 4:6) da matriz

%=================

X = [1 2 3 4;
      4 5 6 7;
      7 8 9 0]

fprintf("diag(X)  %f \n", diag(X)) % diagonal da matriz X
fprintf("diag(X,1)  %f \n", diag(X,1))% diagonal da matriz +1 X
fprintf("diag(X,-1)  %f \n", diag(X,-1)) % diagonal da matriz -1 X
fprintf("diag([ 5 7 9])  %f \n", diag([ 5 7 9])) % diagonal de [ 5 7 9]??

%=================
%Um sistema de equa��es AX = B pode ser resolvido utilizando a f�rmula  X = inv(A)*B.



%Verifique a f�rmula para o sistema
%     x + 2y = 5;
%     x + 3y = 8.
A =   [1 2;
       1 3]
B =   [5 ;
       8]
X = inv(A)*B
X2 = A^(-1)*B

%x + 2y = 5;
%y = -1
%x = 5-(2*y) % solved for x
%x = 3
%y = (5-x)/2 %y
%
%2x + 3y = 8
%y = -1
%x = ((8-(3*y))/2) %solved for x
%https://www.youtube.com/watch?v=j5g-pl3N1uY

%=================

m1 = [1 2 3; 4 5 6; 7 8 9]

m2 = [ 3 5; 6 9]

m3 = zeros(2,2)

m4 = ones(2,2)

m5 = [m2 m3; m4 m2]   %// matriz de matrizes

%%%%%m6 = eye(m5)  cant generate        %// matriz identidade
m7 = eye(3,3)
%m7 = eye(3)
d = det(m5)          %// determinante de m5

inversa = inv(m5)    %// matriz inversa

m5(1,4) = 12

m8 = rand(2,3)       %// matriz randomica 2x3


%A = [1 2;3 4;5 6]
%A'  % matrix transpose

m9 = m5'             %// matriz transposta
