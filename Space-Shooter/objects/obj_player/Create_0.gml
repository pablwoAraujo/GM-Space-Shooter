/// @description Iniciando as variáveis
// Você pode escrever seu código neste editor

// Velocidade do player
player_speed = 5;

// Tempo de recarga do tiro do player
shot_cooldown = 60;

// Nível do tiro do player
shot_level = 1;

// Atirando
fire = function() {
	// Carregando a variável de tiro
	var _keyboard_check = keyboard_check_pressed(vk_space);
 
	// Checando se o cooldown (tempo de espera) esta zerado
	if (_keyboard_check && alarm[0] == -1) {
		
		// Ativando o alarme para garantir o cooldown (tempo de espera)
		alarm[0] = shot_cooldown;
		
		// Criando o tiro
		if (shot_level == 1) {
			instance_create_layer(x, y - (sprite_height/3), "Shots", obj_player_shot);
		} else if (shot_level == 2){
			fire_shot_level_two();
		} else if (shot_level == 3) {
			fire_shot_level_two();
			instance_create_layer(x, y - (sprite_height/3), "Shots", obj_player_shot);
		} else if (shot_level == 4) {
			fire_shot_level_four();
		} else {
			fire_shot_level_two();
			fire_shot_level_four();
		}
	}
}

// Dispara o tiro de nível dois
fire_shot_level_two = function(){
	// Disparo da esquerda
	var _left_shot = instance_create_layer(x - 45, y - (sprite_height/3), "Shots", obj_player_shot_level_2);
	_left_shot.hspeed = -3;
	// Disparo da direita
	var _right_shot = instance_create_layer(x + 45, y - (sprite_height/3), "Shots", obj_player_shot_level_2);
	_right_shot.hspeed = 3;	
}

// Dispara o tiro de nível quatro
fire_shot_level_four = function(){
	// Define o ângulo do tiro mais a direita
	var _angle = 75;
	// Cria o tiro três vezes
	repeat(3){
		var _shot = instance_create_layer(x, y - (sprite_height/3), "Shots", obj_player_shot);
		// Aponta o tiro para a direção correta
		_shot.direction = _angle;
		// Rotaciona a sprite no ângulo correto
		_shot.image_angle = _shot.direction + 90;
		// Incrementa a ângulo do movimento para os próximos disparos
		_angle += 15;
	}
}
