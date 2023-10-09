/// @description Iniciando o inimigo
// Você pode escrever seu código neste editor

// Velocidade vertical do inimigo
vspeed = 3;

// Inicia o alarme
alarm[0] = random_range(1, 3) * room_speed;

// Atirando
fire = function() {
	// Se o inimigo estiver na tela do player atire
	if (y > 0){
		instance_create_layer(x - 3, y + (sprite_height/3), "Shots", obj_enemy_shot);
	}
}

points_give = 10;

// Se o inimigo nascer por cima de outro inimigo ele se destroi
if (place_meeting(x, y, obj_enemy_octopus)) {
	instance_destroy(id, false);	
}