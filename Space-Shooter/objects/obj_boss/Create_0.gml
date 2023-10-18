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
current_state = "state 01";

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

shot_01 = function() {
	instance_create_layer(x, y + 80, "Shots", obj_enemy_slug_shot);
}

shot_02 = function(_left) {
	var _posx = 160;
	if (_left) _posx *= -1;
	
	instance_create_layer(x + _posx, y + 50, "Shots", obj_enemy_shot);
}

/// @method state_01()
state_01 = function(){ // Código do estado um
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
		shot_02(true);
		shot_02(false);
		_shot_cooldown = shot_cooldown;
	}
}

/// @method state_03()
state_03 = function(){ // Código do estado três
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

estado_sequencial = function() {
	if (i==0){
		current_state = "state 01";
	} else if (i==1){
		current_state = "state 02";
	} else {
		current_state = "state 03";
	}
	i++;
	i = i%3;	
}