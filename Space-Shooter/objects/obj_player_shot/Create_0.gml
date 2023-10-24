/// @description Iniciando as variáveis iniciais
// Você pode escrever seu código neste editor

shot_speed = -15;
vspeed = shot_speed;

image_xscale = 3;
image_yscale = 3;

// Imagem do efeito "brilho" do tiro
shot_glow = spr_player_shot_glow;

// Alterando as cores

/*
var _r = irandom(255);
var _g = irandom(255);
var _b = irandom(255);
var _rgb = make_color_rgb(_r, _g, _b);
*/

selected_color = choose(c_yellow, c_red, c_fuchsia, c_lime, c_aqua, c_green, c_maroon, c_navy, c_olive);
