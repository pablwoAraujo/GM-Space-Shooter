/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Convertendo a vida atual em um número entre 0 e 100
var _showable_life = (current_life/maximum_life) * 100;

// Desenhando a barra de vida do boss
draw_healthbar(200, 20, 1080, 30, _showable_life, c_black, c_red, c_lime, 0, true, false);