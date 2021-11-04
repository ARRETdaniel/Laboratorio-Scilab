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
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  buttons ==================
//--------------- coisas de Futebol --------------------------------------------
time=messagebox("Welches Tier ist das Schönste?","modal", "info",['Vogel' 'Adler' 'Schmetterling' 'Katze']);
select  time                // time e' um string
       case 1 then
          messagebox([Aluno; '     Vogel ist das schönste tier!'],"UENF");
       case 2  then
          messagebox([Aluno; '     Adler ist das schönste tier'],"UENF");
       case 3  then
          messagebox([Aluno; '     Schmetterling ist das schönste tier'],"UENF");
       case 4  then
          messagebox([Aluno; '     Katze ist das schönste tier'],"UENF");
end;   //   select
