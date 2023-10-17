// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function screenshake(_intensity){
	var _shake = instance_create_layer(0, 0, "Shield", obj_screenshake);
	_shake.intensity = _intensity; 
}

function giving_points(_points){
	if (instance_exists(obj_control)) {
		obj_control.add_points(_points);	
	}
}