/// @description Iniciando as variáveis
// Você pode escrever seu código neste editor

// Velocidade do player
player_speed = 5;

// Tempo de recarga do tiro do player
shot_cooldown = 60;

// Nível do tiro do player
shot_level = 1;

// Vida
life = 3;

// Escudo
shields = 3; // Quantidade de escudos
active_shield = false;  // Se o escudo esta ativo
invulnerable = false;

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

// Método de dar power ups para o player
// o tiro do player varia de 1 a 5, aumentando 1 por vez
// a quantidade de escudos aumenta de um em um, o máximo de escudos é três
// o tempo de espera entre cada tiro varia de 60 a 20, diminuindo 4 por vez
// velocidade varia de 5 a 10, aumentando 0.5 por vez
///@method upgrade(value)
upgrade = function(_value){
	var _level = obj_control.game_level;
	if (_value > 90) {
		// Aumentando o nível do tiro se ele for menor que 5 ou ganha 10 pontos vezes o nível como bonus
		if (shot_level < 5) shot_level++;
		else giving_points(10*_level);
	} else if (_value > 80) {
		// Ganha mais um escudo (max 3) ou ganha 10 pontos vezes o nível como bonus
		if (shields < 3) shields++;
		else giving_points(10*_level);
	} else if (_value > 40) {
		// Diminuindo o cooldown do tiro, se ele for maior que 20 ou ganha 10 pontos vezes o nível como bonus
		if (shot_cooldown > 20) shot_cooldown -= 4;
		else giving_points(10*_level);
	} else {
		// Aumentando a velocidade do player se ela for menor que 10 ou ganha 10 pontos vezes o nível como bonus
		if (player_speed < 10 ) player_speed += 0.5;
		else giving_points(10*_level);
	}
}

// Função para dar dano no player
///@method take_damage();
take_damage = function(){
	// Só perde vida se o escudo não estiver ativo;
	if (!active_shield){
		// Criando o screenshake ao tomar dano
		utils(10);

		if (life > 1) {
			life --;	
			invulneravel();
		} else {	
			instance_destroy();	
		}
	}
}

// Função para criar um escudo no player
///@method create_shield();
create_shield = function(){
	// Checando se a tecla é pressionada
	var _shield = keyboard_check_pressed(ord("E"));

	if (_shield and !active_shield and shields > 0) {
		var _player_shield = instance_create_layer(x, y, "Shield", obj_shield);
		// Definindo o target do escudo
		_player_shield.target = id;

		// Escudo esta ativo
		active_shield = true;
		// Diminuindo a quantidade de escudos disponíveis
		shields --;
	}
}

invulneravel = function() {
	image_alpha = 0.2;	
	//var _player_shield = instance_create_layer(x, y, "Shield", obj_shield);
	//_player_shield.image_index = 2;
	//_player_shield.target = id;
	active_shield = true;
	invulnerable = true;
	alarm[1] = 120;
}
