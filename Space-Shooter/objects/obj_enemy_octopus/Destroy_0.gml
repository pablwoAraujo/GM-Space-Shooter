/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Criando a explosão
instance_create_layer(x, y, layer, obj_explosion);

// Contando os pontos do usuário
if (instance_exists(obj_game_control)){
	obj_game_control.add_points(points_give);
}

// Dropando um power up ou não
drop_item(chance_to_drop_item);

// Criando o screenshake ao ser destruído
screenshake(10);

// Contabilizando o número de inimigos mortos
global.total_enemies_killed++;
