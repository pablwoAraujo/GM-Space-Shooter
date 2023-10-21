/// @description Criando os inimigos
// Você pode escrever seu código neste editor

// Verifica se não existe mais inimigos na tela
if (!instance_exists(obj_enemy_octopus)){
	// Quantidade de inimigos variando de acordo com o nível do jogo
	var _quantity_of_enemies = 10 * game_level;
	
	if (game_level < 10){
		// Chamando a função que cria os inimigos N vezes
		repeat(_quantity_of_enemies){
			spawn_enemy();
		}	
	} else {
		if (boss_fight) {
			layer_sequence_create("Boss_Sequence", 960, 512, seq_boss_arrival);
			boss_fight = false;
		}
	}
	
}

// Reiniciando o alarme a cada 5 segundos, criando a sensação que há ondas de inimigos
alarm[0] = 60 * 5;
