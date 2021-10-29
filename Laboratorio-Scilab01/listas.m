%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro, 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl >< E >
%//
%// ======> Assunto: Listas ==================
%
clc; clear;
fprintf("UENF - Ciencia da Computacao\n");
fprintf(" Aluno: Daniel Terra Gomes - Campos %s \n", date());
%================================================================
A={[1;3;6], [2;4], 3}
%================================================================
list = 'abcd' , 'xyzw'
list1 = (['abcd' , 'xyzw']) %You can store multiple pieces of text in a string
%array. Each element of the array can contain a string having a different number of
% characters, without padding.
%str = ["Mercury","Gemini","Apollo";
%"Skylab","Skylab B","ISS"]
%Create a string array containing multiple strings using the []
%operator. str is a 2-by-3 string array that contains six strings.
%https://www.mathworks.com/help/matlab/matlab_prog/create-string-arrays.html
%================================================================


%MATLAB does not have a "list" data class.
%If you want a container class to hold other arrays, you can use a cell array, a structure, a table, etc.
%https://www.mathworks.com/matlabcentral/answers/443995-how-to-create-a-list
ListaObjetos = {1,['a' 'b']}

ListaAnimal{1} = "gato"
ListaAnimal{2} = "coelho"
ListaAnimal{3} = "tigre"

ListaNumeros{3} = 678

ListaPalavras = "UENF", "CComputacao"





disp("Execução terminada...");
