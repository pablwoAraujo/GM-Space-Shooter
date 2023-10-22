/// @description Reiniciando o jogo
// Você pode escrever seu código neste editor

// Verifica se o player já morreu para reiniciar
if (ctr_seq_gameover) {
	// Criando o objeto que vai fazer a transição entre as rooms
	var _obj_transition = instance_create_layer(0, 0, "Player", obj_transition);
	// Definindo a room de destino
	_obj_transition.destination = rm_start;
}
