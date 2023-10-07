/// @description Iniciando as variáveis
// Você pode escrever seu código neste editor

// Velocidade do player
player_speed = 5;

// Atirando
fire = function() {
	// Carregando a variável de tiro
	var _keyboard_check = keyboard_check_pressed(vk_space);
 
	// Disparando
	if (_keyboard_check) {
		instance_create_layer(x, y - (sprite_height/3), "Shots", obj_player_shot);
	}
}