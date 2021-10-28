%// Prof. Ausberto S. Castro Vera
%// UENF-CCT-LCMAT-Ciencia da Computacao
%// Outubro 2021
%//
%// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
%//
%// ======> Assunto:  Programacao: GRAFICOS I ==================
clear; clc;
%// ==========================> Code start <====================================
%--------//---------

%--------//---------

%--------//---------
%-----------------
%// ==========================>  Code end  <====================================
%// propriedades da figura
f=gcf();
f.figure_name='UENF - Paradigmas Scilab - 2021 - Daniel Terra Gomes';

%// propriedades dos eixos
da=gca(); %//
da.title.font_foreground = 5;    %// 5=vermelho
da.title.font_size = 5;
                                        %// substituido por xtitle acima
da.title.text="Titulo do Grafico: y = 7sen(x) + sen(7x)";
da.x_label.text="Eixo X";
da.y_label.text="valor de y = f(x) ";

x = -pi:0.1:pi;  %// Desde -Pi ate Pi com intervalo de 0.1
f = 7*sin(x) + sin(7.*x);
plot(x,f)


%// Obs. Capture somente a janela gráfica, para o arquivo da prática
