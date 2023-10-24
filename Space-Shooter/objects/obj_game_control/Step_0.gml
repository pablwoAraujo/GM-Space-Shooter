/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Checando se o player Não existe
if (!instance_exists(obj_player) && !ctr_seq_gameover && !ctr_level_complete) {
	// Criando a sequência
	ctr_seq_gameover = layer_sequence_create("Sequences", room_width/2, room_height/2, seq_game_over);
	
	// Som do gameover
	audio_play_sound(snd_lose, 5, 0);
}
