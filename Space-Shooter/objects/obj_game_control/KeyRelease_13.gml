/// @description Reiniciando o jogo
// Você pode escrever seu código neste editor

// Verifica se o player já morreu para reiniciar
if (ctr_seq_gameover) {
	// Voltando para o menu
	back_to_menu();
	
	// Checando se os pontos atuais são a maior pontuação do jogo
	if (game_score > global.highest_score) {
		// Adicionando a nova pontuação na variável global 
		global.highest_score = game_score;	
	}
}
