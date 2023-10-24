/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

// Se o boss existir
if (instance_exists(obj_boss)) {
	// siga na direção do boss
	direction = point_direction(x, y, obj_boss.x, obj_boss.y);
	
	image_angle = direction + 90;
}
