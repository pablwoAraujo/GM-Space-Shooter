/// @description Atirando
// Você pode escrever seu código neste editor

// Só atira se o inimigo já estiver na tela do player
if (y > 0){
	instance_create_layer(x - 3, y + (sprite_height/3), "Shots", obj_enemy_shot);		
}

// Reinicia o alarme
alarm[0] = random_range(1,3)*room_speed;
