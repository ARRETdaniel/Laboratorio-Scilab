// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
// Outubro 2021
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto: Programacao: Formulario de Entrada de dados ==================

clear; clc;
Aluno = 'Daniel Terra Gomesl';  // <============ Nome do aluno


txt=['altura';'peso']; 
indice=x_mdialog([Aluno;'Ingressar as notas corretas (0 a 10):'],txt,['altura';'1';'peso'); 


altura=evstr(indice(1)); 
peso=evstr(indice(2)); 

user=(peso/(altura^2))*2;  // calcula a media

messagebox('indice: '+string(user), "UENF - "+Aluno);


