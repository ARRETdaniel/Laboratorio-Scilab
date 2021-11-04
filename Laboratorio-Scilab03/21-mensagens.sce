// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         02/set/2021                        %
// % Aluno:        Daniel Terra Gomes                 %
// % Arquivo:                      %
// %--------------------------------------------------%

clear; clc;
Aluno = 'Daniel Terra Gomes';

// ======> Assunto: Programacao: GUI - Entrada de Dados <=========


r = messagebox([Aluno+', voce esta com Notas muito baixas...'; ' ';
             'Precisa de outra prova?'], "Prof. Ausberto Castro - UENF", "info",["Sim","Não","Deixar turma"], "modal");

if r == 2 then
  messagebox('A Prova de RECUPERAÇÃO é no próximo Domingo', "Mensagem do Professor");
    else if r == 1 then
     messagebox('Que pena!, '+Aluno+' ... a gente queria ajudar!', "Mensagem do Professor");
           else
            messagebox('Okay!, '+Aluno+' ... Tchuus!', "Mensagem do Professor");
         end;
end;
