%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
%//
%// ======> Assunto: Programacao: Formulario de Entrada de dados ==================

clear; clc;
Aluno = 'Daniel Terra Gomes';
Disciplina = 'Paradigmas de Linguagens de Programacao - CC-LCMAT-CCT-UENF';
%// ==========================> Code start <====================================
%--------//---------

%--------//---------

%--------//---------
%-----------------
%// ==========================>  Code end  <====================================
b = "    ";

itens=["Provas";"Praticas";"Pesquisa"];

[ok,Provas,Praticas,Pesquisa]=getvalue([Disciplina;'Ingresse as Notas Parciais :'], itens, list("vec",1,"vec",1,"vec",1), ["0.0";"0.0";"0.0"]);
media=mean([Provas,Praticas,Pesquisa]);

if media > 5 then
    mensagem ="Parabens! APROVADO!" ;
    else mensagem = "Infelizmente, voce foi REPROVADO";
end

messagebox([Disciplina;'A MEDIA FINAL é: '+string(media); b; mensagem], "UENF - "+Aluno);
