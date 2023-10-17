/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/* ESTADOS

STATE 01: Parado dando o tiro dois
STATE 02: Movendo e dando o tiro um
STATE 03: Parado intercalando o tiro um e dois
STATE 04: Ficar invulnerável enquanto cria duas naves que vão recuperar sua vida
*/

// Estado inicial do boss
current_state = "state 01";

// Tempo de espera entre os tiros
shot_cooldown = 60;
// Contagem regressiva para atirar
_shot_cooldown = shot_cooldown;

// Tempo de espera entre os estados
state_cooldown = 60 * 5;
// Contagem regressiva para mudança de estado
_state_cooldown = state_cooldown;


// Código do estado um
/// @method state_01()
state_01 = function(){
	// diminui o valor da espera do tiro
	_shot_cooldown --;
	
	// Se a espera for zero ele cria o tiro dois
	if (_shot_cooldown <= 0) {
		instance_create_layer(x, y + 80, "Shots", obj_enemy_slug_shot);
		// Após atirar ele adiciona o tempo de espera
		_shot_cooldown = shot_cooldown;
	}
}