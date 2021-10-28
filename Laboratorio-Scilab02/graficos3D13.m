%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
%//
%// ======> Assunto:  Programacao: GRAFICOS III ==================
clear; clc; clf();
Aluno = ('Daniel Terra Gomes');  %// <============ Nome do aluno
%// ==========================> Code start <====================================
%--------//---------

%--------//---------

%--------//---------
%-----------------
%// ==========================>  Code end  <====================================
%// propriedades da figura: NÃO alterar !!
%dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;



%// propriedades da figura
%f=gcf();
%f.figure_name='UENF CCT LCMAT CC - 2021 - '+ Aluno + date();
%f.figure_name='UENF - Paradigmas Scilab - 2021  - Daniel Terra Gomes';


%h=get("hdl");

x = 0:0.1:2*rem(pi);    %// mudar o intervalo para  0.01, 0.2
y = 0:0.1:2*rem(pi);    %//            "
z = sin(x')*cos(y);

plot(x,y, z, '--gs', 'LineWidth', 2);     %// graficos 3D


f=get("current_figure");         %// get the handle of the parent figure
f.color_map=hotcolormap(10);      %// muda o colormap   5, 7, 9

xtitle('z = sin(x'')*cos(y)');   %// titulo do grafico
