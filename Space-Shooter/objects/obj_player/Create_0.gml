/// @description Iniciando as variáveis
// Você pode escrever seu código neste editor

// Velocidade do player
player_speed = 5;

// Tempo de recarga do tiro
shot_cooldown = 60;

// Atirando
fire = function() {
	// Carregando a variável de tiro
	var _keyboard_check = keyboard_check_pressed(vk_space);
 
	// Checando se o cooldown (tempo de espera) esta zerado
	if (_keyboard_check && alarm[0] == -1) {
		
		// Ativando o alarme para garantir o cooldown (tempo de espera)
		alarm[0] = shot_cooldown;
		
		// Criando o tiro
		instance_create_layer(x, y - (sprite_height/3), "Shots", obj_player_shot);
	}
}