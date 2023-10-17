/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Debug estado atual
show_debug_message(string_concat("current_state", current_state));
show_debug_message(string_concat("x", x));
// Diminuindo o tempo de espera para mudar o estado
_state_cooldown--;
// Se o tempo de esperar chegar ao fim ele vai selecionar outro estado
if (_state_cooldown <= 0) {
	// Seleciona um estado
	//current_state = choose("state 01", "state 02", "state 03");
	if (i==0){
		current_state = "state 01";
	} else if (i==1){
		current_state = "state 02";
	} else {
		current_state = "state 03";
	}
	i++;
	i = i%3;
	
	// Reseta o countdown para a troca de estado
	_state_cooldown = state_cooldown;
}

show_debug_message(current_state);

if (current_state == "state 01"){
	state_01();
} else if (current_state == "state 02"){
	state_02();
} else if (current_state == "state 03"){
	
} else if (current_state == "state 04"){
	
}


