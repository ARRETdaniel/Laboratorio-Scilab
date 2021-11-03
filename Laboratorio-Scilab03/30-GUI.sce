// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         02/set/2021                        %
// % Aluno:        Daniel Terra Gomes                 %
// % Arquivo:                      %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl ><Shift>< E >
//
// ======> Assunto:  GUI   Graphic User Interface
//      figure : cria uma figura GUI (janela Grafica)
//   uicontrol : cria um objeto GUI dentro de uma janela grafica, com varias propriedades
//    callback : executa uma instrução do Scilab (uma função, um comando, etc)

clear; clc;
Aluno = 'Prof. Ausberto Castro';
//------------------------- JANELA Principal ----------------------------------
//  Cria uma janela grafica: Comando "figure"
h = figure('position', [150 150 600 600], ...    // [ x y larguraJanela alturaJanela]
           'backgroundcolor', [0.5 0.8 0.5], ...   // [R G B]      0.0 - 1.0
           "figure_name", "UENF "+Aluno+" - Scilab GUI 2021");

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
	hop2 = uimenu("parent",h, "label",gettext("Sobre"));

	// Menu: Arquivo (remover janela grafica)
	uimenu("parent",hop1, "label",gettext("Fechar"), "callback", "close(h)");

	// Menu: Sobre
	uimenu("parent",hop2, "label",gettext("Autor da Interface"), "callback","ASCV_Sobre();");
	// Sleep to guarantee a better display (avoiding to see a sequential display)
	sleep(500);



//-----------------------------------------------------------------------------
// Estilo Texto

// Titulo do quadro UIC:  um texto;     Posicao (x,y)  esquina inferior esquerda
uicontrol(h,'style', "text", ...
            'string', ' UICONTROL Style 2019 ', ...
            'position', [155 550 250 40], ...    // [ x y w h]  w=larguraUIC   h=alturaUIC
            'backgroundcolor', [0.5 0.8 0.5], ...
            'fontsize', 30);
//-----------------------------------------------------------------------------

T10 = uicontrol(h, 'style', 'text',...
                  'string', 'Estilo TEXTO:  Apenas um texto qualquer ...', ...
                  'position', [20 500 400 50], ...
                  'fontsize', 15, ...
                  'backgroundcolor', [0.5 0.8 0.5]);
//-----------------------------------------------------------------------------
// Estilo EDIT
T20 = uicontrol(h, 'style', 'text',...
                  'fontsize', 15, ...
                  'string', 'Estilo EDIT:  Para editar um texto qualquer:', ...
                  'position', [20 460 310 50], ...
                  'Foregroundcolor', [1 0 0], ...
                  'backgroundcolor', [0.5 0.8 0.5]);
T21 = uicontrol(h, 'style', 'edit', ...
                  'string', ' Editar este texto', ...
                  'position', [320 470 250 30], ...
                  'fontsize', 15, ...
                  'backgroundcolor', [1 1 1]);
//-----------------------------------------------------------------------------
// Estilo LISTBOX
T30 = uicontrol(h, 'style', 'text', ...
                  'string', 'Estlio LISTBOX:', ...
                  'position', [20 400 120 50], ...
                  'fontsize', 15, ...
                  'backgroundcolor', [0.5 0.8 0.5]);
T31 = uicontrol(h, 'style', 'listbox', ...
                  'position', [130 320 120 100], ...
                  'string', ' Vermelho | Azul | Verde | Laranja | Preto | Amarelo ', ... //abaixo outra forma
                  'fontsize', 15, ...
                  'backgroundcolor', [1 1 1]);   // branco
         // set(T31, 'string', ' Vermelho | Azul | Verde | Laranja | Preto | Amarelo ');
         set(T31, 'value', [3:3]);   /// valor default
//-----------------------------------------------------------
// Estilo Frame
F40 = uicontrol( ...
		"style"               , "frame",...
		"position"            , [430 370 150 50 ],...
		"horizontalalignment" , "center", ...
		"background"          , [1 0.5 0.5], ...
		"tag"                 , "F40" ...
	);
tituloFrame = uicontrol( ...
		"style"               , "text",...
		"string"              , "Frame",...
		"units"               , "pixels",...
        "HorizontalAlignment", "left",...
		"position"            , [450 420 100 25],...
		"fontsize"            , 15,...
		"horizontalalignment" , "center", ...
		"background"          , [0.5 0.8 0.5], ...
		"tag"                 , "tituloFrame" ...
	);
//-----------------------------------------------------------------------------
// Estilo RadioButton

function Evento1()
messagebox('Voce escolheu a cor Vermelha','UENF Scilab 2018  Radiobutton')
set(findobj("tag", "Radio2") , "value", 0);
endfunction;

function Evento2()
messagebox('Voce escolheu a cor Verde','UENF Radiobutton')
set(findobj("tag", "Radio1") , "value", 0);
endfunction;

R00 = uicontrol(h, 'style', 'text', ...
                  'string', 'RADIOBUTTON:', ...
                  'HorizontalAlignment', 'left',...
                  'position', [290 420 150 25], ...
                  'fontsize', 15, ...
                  'backgroundcolor', [0.5 0.8 0.5]);
Radio1 = uicontrol( ...
		"style"              , "radiobutton",...
		"string"             , "Vermelho",...
		"position"           , [300 380 100 40],...
		"horizontalalignment", "left",...
		"min"                , 0, ...
		"max"                , 1, ...
		"value"              , 0, ...
		"background"          , [0 1 1], ...
	    "tag"                , "Radio1", ...
		"callback"           ,"Evento1");
Radio2 = uicontrol( ...
		"style"              , "radiobutton",...
		"string"             , "Verde",...
		"position"           , [300 340 100 40],...
		"horizontalalignment", "left",...
		"min"                , 0, ...
		"max"                , 1, ...
		"value"              , 0, ...
		"background"          , [0 1 1], ...
	    "tag"                , "Radio2", ...
		"callback"           ,"Evento2");
//------------------------------------------------------------------------------
// Estilo POPMENU
        function popupmenu_callback()
        pop = findobj("Tag", "T41");
        items = get(pop, "String");
        selected = get(pop, "Value");

        msg = msprintf("Voce selecionou ", %s, " ", items(selected));
        messagebox(msg, "UENF - Scilab 2019 - Selecao Pop-Up Menu", "scilab", "modal");
        endfunction

T40 = uicontrol(h, 'style', 'text', ...
                  'string', 'Estlio Pop-Up MENU:', ...
                  'position', [20 260 150 25], ...
                  'fontsize', 15, ...
                  'backgroundcolor', [0.5 0.8 0.5]);
T41 = uicontrol(h, 'style', 'popupmenu', ...
                  'position', [170 260 150 25], ...
                  'string', ' Opcao 1 | Opcao 2 | Opcao 3 | Opcao 4 | Opcao 5 | Opcao 6 ', ...
                  'fontsize', 15, ...
                  'Callback', 'popupmenu_callback();', ...   //chamada a funcao
                  'Tag', 'T41', ...
                  'backgroundcolor', [1 1 0]);
//------------------------------------------------------------------------------
// Estilo Texto LaTeX
latextexto=uicontrol(h,"Style","text",...
                       "position", [30 170 270 70], ...
                       "fontsize", 20, ...
                       "string","$\Gamma(s)=\int_0^\infty t^{s-1}\mathrm{e}^{-t}\,\mathrm{d}t$");
//-----------------------------------------------------------------------------
// Estilo SLIDER (deslizador)

function slider_update()
sl = findobj("Tag", "T50");
txt = findobj("Tag", "T51");
set(txt, "String", "Valor Slider: " + string(get(sl, "Value")));
endfunction

T50 = uicontrol(h, "Position", [425 340 160 20], ...
            "Style", "slider", ...
            "Min", 0, ...
            "Max", 100, ...
            "Value", 50, ...
            "SliderStep", [2 10], ...
            "Tag", "T50", ...
            "Callback", "slider_update();");
T51 = uicontrol(h, "Position", [425 320 160 20],...
    "Style", "text",...
    "FontSize", 12, ...
    "String", "Valor Slider: "+string(50), ...
    "BackgroundColor",[1 1 1], ...
    "HorizontalAlignment", "center", ...
    "Tag", "T51");
slider_frame_title = uicontrol(h, "Position", [475 300 70 20], ...
    "Style", "text",...
    "String", "Estilo SLIDER",...
    "BackgroundColor", [0.5 0.8 0.5]);
//------------------------------------------------------------------------------
function updatecheckbox(opt)
    // escolher uma tarefa adequada
endfunction



// Estilo  CHECKBOX
T60 = uicontrol(h, 'style', 'text', ...
                  'string', 'Estlio CHECKBOX:', ...
                  'position', [420 260 150 25], ...
                  'fontsize', 15, ...
                  'backgroundcolor', [0.5 0.8 0.5]);
T61 = uicontrol( ...
		"style"              , "checkbox",...
		"string"             , "Computação",...
		"position"           , [ 420 240 100 20],...
		"horizontalalignment", "left",...
		"value"              , 0, ...
		"background"          , [1 1 0], ...
		"callback"           , "updatecheckbox(1)",...
		"tag"                , "T61");

	// show/hide : title

T62 = uicontrol( ...
		"style"              , "checkbox",...
		"string"             , "Matemática",...
		"position"           , [420 220 100 20],...
		"horizontalalignment", "left",...
		"value"              , 0, ...
		"background"          , [1 1 0], ...
		"callback"           , "updatecheckbox(2)",...
		"tag"                , "T62");

	// show/hide : labels

T63 = uicontrol( ...
		"style"              , "checkbox",...
		"string"             , "Engenharia",...
		"position"           , [420 200 100 20],...
		"horizontalalignment", "left",...
		"value"              , 0, ...
		"background"          , [1 1 0], ...
		"callback"           , "updatecheckbox(3)",...
		"tag"                , "T63");

	// show/hide : edges

T64 = uicontrol( ...
		"style"              , "checkbox",...
		"string"             , "Economia",...
		"position"           , [420 180 100 20],...
		"horizontalalignment", "left",...
		"value"              , 0, ...
		"background"          , [1 1 0], ...
		"callback"           , "updatecheckbox(4)",...
		"tag"                , "T64");

//-----------------------------------------------------------
// Estilo PUSHBUTTON


function ASCV_Sobre()
	msg = msprintf(gettext(" Interface desenvolvida na UENF (CCT - LCMAT - CC).\nAutor: Prof. Ausberto S. Castro Vera"));
	messagebox(msg, gettext("Autor"), "info", "modal");
endfunction

function latex_callback()
          messagebox("LaTeX é interessante e útil !", "UENF", "info", "modal");
endfunction,

T70 = uicontrol(h,'style','pushbutton',...
    'String'             ,'$\scalebox{2}{\LaTeX\ z^2 + \sqrt{y^2x^3 - sen(x^3)}}$', ...
	'Position'           , [150 70 400 80],...
    'Callback'           , 'latex_callback()');


T71 = uicontrol(h, "Position", [200 20 250 30], ...
    "Style", "pushbutton", ...
    "String", "SAIR desta Aplicação", ...
    "FontWeight", "bold", ...
    "FontSize", 20, ...
    "Callback", "close(h)");
