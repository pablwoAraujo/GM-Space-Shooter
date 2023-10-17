/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/* ESTADOS

STATE 01: Parado dando o tiro dois
STATE 02: Movendo e dando o tiro um
STATE 03: Parado intercalando o tiro um e dois
STATE 04: Ficar invulnerável enquanto cria duas naves que vão recuperar sua vida
*/
i = 0;
// Estado inicial do boss
current_state = "state 02";

// Tempo de espera entre os tiros
shot_cooldown = 60;
// Contagem regressiva para atirar
_shot_cooldown = shot_cooldown;

// Tempo de espera entre os estados
state_cooldown = 60 * 15;
// Contagem regressiva para mudança de estado
_state_cooldown = state_cooldown;

// Velocidade horizontal
_hspeed = 3;

/// @method state_01()
state_01 = function(){ // Código do estado um
	// diminui o valor da espera do tiro
	_shot_cooldown --;
	
	// Se a espera for zero ele cria o tiro dois
	if (_shot_cooldown <= 0) {
		instance_create_layer(x, y + 80, "Shots", obj_enemy_slug_shot);
		// Após atirar ele adiciona o tempo de espera
		_shot_cooldown = shot_cooldown;
	}
}

/// @method state_02()
state_02 = function(){ // Código do estado dois
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
		instance_create_layer(x-160, y + 50, "Shots", obj_enemy_shot);
		instance_create_layer(x+160, y + 50, "Shots", obj_enemy_shot);
		_shot_cooldown = shot_cooldown;
	}
}
