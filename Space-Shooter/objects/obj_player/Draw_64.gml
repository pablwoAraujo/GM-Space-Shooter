/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// altura da gui
var _gui_height = display_get_gui_height();

// Posição da primeira imagem
var _relative_x = 40;

// Criando uma imagem para cada vida do player
repeat(life) {
	draw_sprite_ext(spr_player, 0, _relative_x, _gui_height - 40, 0.3, 0.3, 0, c_white, 0.5);
	// Alterando o X para que as imagens fiquem uma ao lado da outra
	_relative_x += 40;
}

//Resetando a variável que calcula o x
_relative_x = 40;

// Criando uma imagem para cada escudo do player
repeat(shields) {
	draw_sprite_ext(spr_shield, 2, _relative_x, _gui_height - 90, 0.3, 0.3, 0, c_white, 0.5);
	// Alterando o X para que as imagens fiquem uma ao lado da outra
	_relative_x += 40;
}
















