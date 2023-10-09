/// @description Iniciando
// Você pode escrever seu código neste editor

// Iniciando a criação dos inimigos
alarm[0] = 60;

// Criando o sistema de níveis
game_level = 1;
game_points_per_level = 100;

// Criando o sistema de pontos
game_score = 0;

// Criando a função para atribuir os pontos
///@method add_points(points)
add_points = function(_points){ 
	game_score += _points;	
	if (game_score > game_points_per_level){
		game_level +=1;
		game_points_per_level *= 2;
	}
}

// Criando o método para gerar os inimigos
///@method spawn_enemy
spawn_enemy = function(){
	// Criando as coordenadas do spawn aleatoriamente
	var _x_coordinate = irandom_range(64, room_width - 64);
	var _y_coordinate = irandom_range(-96, - room_height);

	// Criando o inimigo com base no nível
	// Quanto maior o nível maior a probabilidade de vir um inimigo tipo 2 (slug)
	var _chance = random_range(0, game_level);
	var _enemy = obj_enemy_octopus;

	// Se o valor da chance for maior que dois então selecione o inimigo do tipo slug
	if (_chance > 2) {
		_enemy = obj_enemy_slug;	
	}

	// Criando os inimigos
	instance_create_layer(_x_coordinate, _y_coordinate, "Enemies", _enemy);
}