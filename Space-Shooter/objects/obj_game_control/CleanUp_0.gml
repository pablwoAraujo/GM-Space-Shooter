/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Checando se os pontos atuais são a maior pontuação do jogo
if (game_score > global.highest_score) {
	// Adicionando a nova pontuação na variável global 
	global.highest_score = game_score;	
}

// Parando a música de fundo
audio_stop_all();
