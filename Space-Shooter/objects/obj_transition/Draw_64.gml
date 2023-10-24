/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Pegando informações do tamanho da GUI
var _x2 = display_get_gui_width();
var _y2 = display_get_gui_height();

// Desenhando um retangulo preto na tela
draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, _x2, _y2, false);
draw_set_color(c_white);
draw_set_alpha(1);