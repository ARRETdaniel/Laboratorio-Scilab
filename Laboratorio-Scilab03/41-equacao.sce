// Prof. Ausberto S. Castro Vera
// UENF-CCT-LCMAT-Ciencia da Computacao
// Outubro 2021 
//
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  Equacoes (Aplicacoes) ==================

clear; clc;
Aluno = 'Fulano de tal';

Eq1 = "     Ax + By = C";
Eq2 = "     Dx + Ey = F";


itens=["A"; "B";"C" ;"D";"E"; "F"];

[ok,a,b,c,d,e,f]=getvalue(['UENF - Prof. Ausberto S. Castro V. - 2021';'Sistema de Equações: ';  Eq1; Eq2],...
                          itens,...
                          list("vec",1,"vec",1,"vec",1, "vec",1,"vec",1,"vec",1),...
                          ["2";"-3";"13";"1";"-1";"5"]  );
matrizcoef = [a b; d e];              // matriz de coeficientes
vet = [c f]';                          // vetor coluna


k = det(matrizcoef);                   // determinante da matriz

if ( k == 0 ) then
   messagebox('O sistema não tem solução...')
   else
     solucao = inv(matrizcoef)*vet;    // calcula a solucao do sistema
     messagebox(['Solução:';
                 '     X = '+string(solucao(1)); ...
                 '     Y = '+string(solucao(2))],"UENF - ASCV", "info");
end;





