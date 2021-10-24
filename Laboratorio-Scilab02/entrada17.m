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
username1 = 'dani'
password1 = '123'
attempts= 0;

%--------//---------
username = input('username','string');%get(handles.usrbox,'string');
password = input('numero password','string');%get(handles.psswrdbox, 'string');
attempts = attempts + 1;
if strcmpi(username, username1)&&strcmpi(password,password1)
   disp('entrou\n')
   fprintf('cadastro foi finalizado com sucesso.\n')
else % attempts == 3
   disp('nah')
   fprintf('cadastro foi finalizado, dados incorreta.\n')
end

fprintf('login terminou \n.')
%--------//---------

%https://www.mathworks.com/matlabcentral/answers/467081-not-equal-to-in-matlab
%https://www.mathworks.com/matlabcentral/answers/74925-while-loop-in-matlab-password-gui
%--------//---------
%-----------------
%// ==========================>  Code end  <====================================


%{

b = "    ";

itens=["Provas";"Praticas";"Pesquisa"];

[ok,Provas,Praticas,Pesquisa]=getvalue([Disciplina;'Ingresse as Notas Parciais :'], itens, list("vec",1,"vec",1,"vec",1), ["0.0";"0.0";"0.0"]);
media=mean([Provas,Praticas,Pesquisa]);

if media > 5 then
    mensagem ="Parabens! APROVADO!" ;
    else mensagem = "Infelizmente, voce foi REPROVADO";
end

messagebox([Disciplina;'A MEDIA FINAL é: '+string(media); b; mensagem], "UENF - "+Aluno);

%}
