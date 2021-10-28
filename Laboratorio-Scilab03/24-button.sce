// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
// Outubro 2021
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  buttons ==================

clear; clc;
Aluno = 'Fulano de Tal';

//--------------- coisas de Futebol --------------------------------------------
time=messagebox("Qual é o melhor time do Brasil?","modal", "info",['Atetico-MG' 'Fortaleza' 'Flamengo' 'Internacional']);

select  time                // time e' um string
       case 1 then
          messagebox([Aluno; '     Atletico-MG 2 - 1 Cuiabá!'],"UENF");
       case 2  then
          messagebox([Aluno; '     Fortaleza 3 - 0 CAParanaense'],"UENF");       
       case 3  then
          messagebox([Aluno; '     Flamengo  1 - 3 Fluminense'],"UENF");
       case 4  then
          messagebox([Aluno; '     O Campeão Mundial 2006...'; ' ';'Inter 2 - 2 Corinthians'],"UENF");          
end;   //   select





