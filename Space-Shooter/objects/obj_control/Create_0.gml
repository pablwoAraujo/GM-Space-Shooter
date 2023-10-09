/// @description Iniciando
// Você pode escrever seu código neste editor

// Iniciando a criação dos inimigos
alarm[0] = 60;

// Criando o sistema de pontos
game_score = 0;

// Criando a função para atribuir os pontos
///@method add_points(points)
add_points = function(_points){ 
	game_score += _points;	
}
