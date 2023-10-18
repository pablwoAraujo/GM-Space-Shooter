/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Debug estado atual
show_debug_message(string_concat("current_state: ", current_state));

// Diminuindo o tempo de espera para mudar o estado
_state_cooldown--;

// Se o tempo de esperar chegar ao fim ele vai selecionar outro estado
if (_state_cooldown <= 0) {
	// Seleciona um estado
	//estado_sequencial();
	current_state = choose("state 01", "state 02", "state 03");

	// Reseta o countdown para a troca de estado
	_state_cooldown = state_cooldown;
}

if (current_state == "state 01"){
	state_01();
} else if (current_state == "state 02"){
	state_02();
} else if (current_state == "state 03"){
	state_03();
} else if (current_state == "state 04"){
	
}
