/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

// Variável de controle que permite o objeto mudar a direção
direction_change_control = true;

// Sobrescrevendo a função de atirar
fire = function() {
	// Se o inimigo estiver na tela do player atire
	if (y > 0 and y<890){
		instance_create_layer(x - 3, y + (sprite_height/3), "Shots", obj_enemy_slug_shot);		
	}
}

points_give = 20;

chance_to_drop_item = round((100/obj_game_control.game_level)*2);