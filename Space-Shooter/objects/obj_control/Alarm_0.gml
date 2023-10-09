/// @description Criando os inimigos
// Você pode escrever seu código neste editor

// Verifica se não existe mais inimigos na tela
if (!instance_exists(obj_enemy_octopus)){
	// Quantidade de inimigos variando de acordo com o nível do jogo
	var _quantity_of_enemies = 10 * game_level;
	// Chamando a função que cria os inimigos N vezes
	repeat(_quantity_of_enemies){
		spawn_enemy();
	}	
}

// Reiniciando o alarme a cada 5 segundos, criando a sensação que há ondas de inimigos
alarm[0] = 60 * 5;
