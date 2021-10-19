%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro, 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl >< L >
%//
%// ======> Assunto:  VETORES ==================

clc; clear;
fprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
fprintf(" Aluno: Daniel Terra Gomes - Campos %s\n\n", date());

v1 = 3:10

%===========
v2 = 11:3:44
%===========

v3 = 1.2:0.2:2.2

%===========

C = 5*ones(1,3) % C = 2*ones(2,3) same as C = [2 2 2; 2 2 2]
W = [ C ; C.^2 ; C.^3 ; C.*10]      %// matriz
%https://www.mathworks.com/help/matlab/ref/times.html

Vetor03 = 1:2:20
fprintf("O elemento k-esimos %d e n-esimos : %d \n", Vetor03(end-1), Vetor03(end))
%https://www.mathworks.com/matlabcentral/answers/392231-how-can-i-find-the-second-last-value-of-a-vector
%===========

soma = v1(3) + v3(5)
produto=  v2(4)*v1(2) + v3(3)*v1(5)

fprintf("Vetor04 = ")
for k = 7:4:31
    printf("%d ",k)
end
Vetor04 = 7:4:31

x=input(" Qual e´ o elemento do Vetor04, que deseja ver? : ")
fprintf("O elemento solicitado : %d \n", find(Vetor04 == x))
%https://www.geeksforgeeks.org/how-to-find-the-position-of-a-number-in-an-array-in-matlab/?ref=rp
