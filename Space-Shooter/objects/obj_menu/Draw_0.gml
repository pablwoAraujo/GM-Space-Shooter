/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Se desenhando
draw_self();

// Definindo algumas personalizações
//draw_set_color(c_black);
draw_set_font(fnt_buttons);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Desenhando o texto
draw_text(x, y, text);

// Resetando as configurações alteradas
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_font(-1);
//draw_set_color(c_white);
