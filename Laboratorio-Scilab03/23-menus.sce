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
//
// ======> Assunto:  GUI - Menus  e Submenus Interativos ==================

// Observe as opçoes do MENU PRINCIPAL da JANELA de COMANDOS..................

    // Incluir seu NOME aqui


//  Cria uma janela grafica: Comando "figure"
h = figure('position', [150 150 600 600], ...
           'backgroundcolor', [1 0.97 0.8], ...   // [R G B]      0.0 - 1.0
           "figure_name", "UENF "+Aluno);


//----------------- Funcao -----------------------------------
function graficar3d()
da1=gca();
	da1.title.font_size = 4;
da1.title.font_foreground = 1;    // 5=vermelho
da1.title.text="Gerne Geschehen ";
da1.x_location='middle';
endfunction;

function grafico0()
   delete(gca()); // limpa a janela gráfica
   x = -2:1:2;    // Se quiser, pode mudar o incremento para  0.01
	 y2 = cos(x);
   plot(x,y2);;  // figura 2D
   xtitle('grafico0');   // titulo do grafico
   telaUsada =1;
endfunction;

function grafico()
   delete(gca()); // limpa a janela gráfica
   x = -2:1:4;
	 y1 = sin(x)*4;
	 y2 = cos(x);

	 plot(x,y1,'r');
   xtitle('y1 = sin(x)*2 y2 = cos(x)');   // titulo do grafico
   telaUsada =1;
endfunction;

//------------------------------------------------------------
function ASCV_Sobre()
	msg = msprintf(gettext(" Interface desenvolvida na UENF (CCT - LCMAT - CC)"...
                             +"\nAutor: Prof. Ausberto S. Castro Vera,"...
                             +"\nCopyright (C) 2008-2021 ASCV-UENF "));
	messagebox(msg, gettext("Autor"), "info", "modal");
endfunction

///===============  Programa principal  =====================
//elimina o toolbar da janela grafica
toolbar(h.figure_id,'off');

 	// ------------------
	// Passo : Menu da janela Principal
	// ------------------

	// Remove menus originais do Scilab
	delmenu(h.figure_id,gettext("&File"));
	delmenu(h.figure_id,gettext("&Tools"));
	delmenu(h.figure_id,gettext("&Edit"));
	delmenu(h.figure_id,gettext("&?"));
	toolbar(h.figure_id,"off");

	// Novas opcoes de menu
	hop1 = uimenu("parent",h, "label",gettext("Arquivo"));
	hop2 = uimenu("parent",h, "label",gettext("Graficos"));
	hop3 = uimenu("parent",h, "label",gettext("Sobre"));

	// Menu: Arquivo (remover janela grafica)
	uimenu("parent",hop1, "label",gettext("Fechar"), "callback", "close(h)");
	// Menu: Graficos
	uimenu("parent",hop2, "label",gettext("Gerne Geschehen"), "callback", "graficar3d()");
	uimenu("parent",hop2, "label",gettext("grafico0"), "callback", "grafico0()");
	uimenu("parent",hop2, "label",gettext("Grafico"), "callback", "grafico()");
	// Menu: Sobre
	uimenu("parent",hop3, "label",gettext("Autor da Interface"), "callback","ASCV_Sobre();");
