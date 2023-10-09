/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

// Checando em qual lado da room ele esta

if (y  > room_height/3){
	if (direction_change_control){
		direction_change_control = false;
		if (x > room_width/2) hspeed = -3;	
		else hspeed = 3;
	}
}

// Fazendo o inimigo acompanhar o player
image_angle = lerp(image_angle, point_direction(x, y, obj_player.x, obj_player.y),1)+90;
