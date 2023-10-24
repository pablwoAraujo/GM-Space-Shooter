/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Só faz isso se não estiver no state 04
if (current_state != "state 04") {
	// Perdendo um de vida
	if (current_life > 0){
		current_life -= 4;
	} else {
		instance_destroy();
	}

	// Destruindo a instância do tiro
	instance_destroy(other);
}
