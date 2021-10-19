// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
// Outubro 2021
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: Programacao: Formulario de Entrada de dados ==================

clear; clc;
Aluno = 'Fulano de tal';  // <============ Nome do aluno


txt=['Nota 1';'Nota 2';'Nota 3 ' ;'Trabalho ';'Pratica ']; 
notas=x_mdialog([Aluno;'Ingressar as notas corretas (0 a 10):'],txt,['1';'1';'0';'0';'8']); 

n1=evstr(notas(1));   // strings convertidos em numeros
n2=evstr(notas(2)); 
n3=evstr(notas(3)); 
n4=evstr(notas(4)); 
n5=evstr(notas(5)); 

media = mean([n1,n2,n3,n4,n5]);  // calcula a media

messagebox('A MEDIA FINAL é: '+string(media), "UENF - "+Aluno);


