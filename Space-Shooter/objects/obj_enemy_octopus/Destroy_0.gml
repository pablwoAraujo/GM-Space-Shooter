/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Criando a explosão
instance_create_layer(x, y, layer, obj_explosion);

// Contando os pontos do usuário
if (instance_exists(obj_control)){
	obj_control.add_points(points_give);
}
