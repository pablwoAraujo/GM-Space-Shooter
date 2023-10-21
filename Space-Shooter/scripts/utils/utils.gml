// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function screenshake(_intensity){
	var _shake = instance_create_layer(0, 0, "Shield", obj_screenshake);
	_shake.intensity = _intensity; 
}

function giving_points(_points) {
	if (instance_exists(obj_control)) {
		obj_control.add_points(_points);	
	}
}

function destroy_sequence() {
	var _elements = layer_get_all_elements("Boss_Sequence");
	layer_sequence_destroy(_elements[0]);
	
	instance_create_layer(960, 256, "Boss", obj_boss);
}

function create_sequence() {
	if (instance_exists(obj_player)) {
		layer_sequence_create("Sequences", obj_player.x, obj_player.y, seq_level_end);

		// Destruindo o player
		instance_destroy(obj_player);
		
		// Avisando para o controle do jogo que o level foi completo
		obj_control.ctr_level_complete = true;
	}
}