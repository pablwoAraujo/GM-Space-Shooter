/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/* ESTADOS

STATE 01: Parado dando o tiro dois
STATE 02: Movendo e dando o tiro um
STATE 03: Parado intercalando o tiro um e dois
STATE 04: Ficar invulnerável enquanto cria duas naves que vão recuperar sua vida
*/

// Tocando a música do boss
audio_play_sound(snd_aggressor, 1, 1);

// Estado inicial do boss
current_state = "state 01";
available_minions = true; 

// Iniciando o sistema de vida
maximum_life = 2000;
current_life = maximum_life;

// Tempo de espera entre os tiros
shot_cooldown = 45;
// Contagem regressiva para atirar
_shot_cooldown = shot_cooldown;

// Tempo de espera entre os estados
state_cooldown = 60 * 15;
// Contagem regressiva para mudança de estado
_state_cooldown = state_cooldown;

// Velocidade horizontal
_hspeed = 3;

shot_01 = function() {
	instance_create_layer(x, y + 80, "Shots", obj_enemy_slug_shot);

	// Som do tiro
	audio_play_sound(snd_laser1, 1, 0);
}

shot_02 = function(_left) {
	var _posx = 160;
	if (_left) _posx *= -1;
	
	instance_create_layer(x + _posx, y + 50, "Shots", obj_enemy_shot);

	// Som do tiro
	audio_play_sound(snd_laser2, 1, 0);
}

/// @method state_01()
state_01 = function() { // Código do estado um
	// diminui o valor da espera do tiro
	_shot_cooldown --;
	
	// Se a espera for zero ele cria o tiro dois
	if (_shot_cooldown <= 0) {
		shot_01();
		// Após atirar ele adiciona o tempo de espera
		_shot_cooldown = shot_cooldown;
	}
}

/// @method state_02()
state_02 = function() { // Código do estado dois
	// diminui o valor da espera do tiro
	_shot_cooldown --;
	
	// Movendo-se na horizontal
	x += _hspeed;
	
	// Invertendo o movimento horizontal
	if (x >= 1632 or x <= 288){
		_hspeed *= -1;
	}
	
	// Se a espera for zero ele cria o tiro dois
	if (_shot_cooldown <= 0) {
		shot_02(true);
		shot_02(false);
		_shot_cooldown = shot_cooldown;
	}
}

/// @method state_03()
state_03 = function() { // Código do estado três
	// diminui o valor da espera do tiro
	_shot_cooldown --;
	
	// Se a espera for zero ele cria o tiro um
	if (_shot_cooldown <= 0) {
		shot_01();
		// Após atirar ele adiciona o tempo de espera
		_shot_cooldown = shot_cooldown * 2;
	}
	
	// Se a espera for o tempo de cooldown ele cria o tiro dois na esquerda
	if (_shot_cooldown == shot_cooldown) {
		shot_02(false);
	}
	
	// Se a espera for o tempo de cooldown ele cria o tiro dois na direita
	if (_shot_cooldown == round(shot_cooldown*1.5)) {
		shot_02(true);
	}
}

/// @method state_04()
state_04 = function() { // Código do estado quatro
	// Trocando a sprite
	sprite_index = spr_boss_special_state;

	// Indo para o meio da tela
	x += sign(room_width/2 - x);

	// Verificando se é a primeira vez que o boss entra neste estado
	if (available_minions){
		shot_cooldown = 30;
		// Garantindo que o boss não entre novamente no estado 04
		available_minions = false;

		// Criando o minion da esquerda
		var _minion = instance_create_layer(128, 672, "Enemies", obj_boss_minion);
		_minion.image_angle = 90;

		// Criando o minion da direita
		_minion = instance_create_layer(1760, 672, "Enemies", obj_boss_minion);
		_minion.image_angle = 270;
	}
}

// Método responsável por controlar as mudanças de estado do boss
/// @method changing_state()
changing_state = function() {
	// Debug estado atual
	// show_debug_message(string_concat("current_state: ", current_state));

	// Diminuindo o tempo de espera para mudar o estado
	_state_cooldown--;

	// Se o tempo de esperar chegar ao fim ele vai selecionar outro estado
	if (_state_cooldown <= 0) {
		// Se o boss perder 2/3 da vida e ainda não tiver entrado no estado 04 ele entra no estado 04
		if (current_life < maximum_life/3 and available_minions) {
			current_state = "state 04";
		} else {
			// Seleciona um estado aleatoriamente
			current_state = choose("state 01", "state 02", "state 03");
			// Se já tiver passado pelo estado 04
			if (!available_minions) {
				// Verifique se há instancias do objeto minion e destrua
				if (instance_exists(obj_boss_minion)) instance_destroy(obj_boss_minion);	
			}
		}
		// Reseta o countdown para a troca de estado
		_state_cooldown = state_cooldown;
	}
	
	// Executando o código de cada estado
	if (current_state == "state 01") {
		state_01();
	} else if (current_state == "state 02") {
		state_02();
	} else if (current_state == "state 03") {
		state_03();
	} else if (current_state == "state 04") {
		state_04();
	}
}
