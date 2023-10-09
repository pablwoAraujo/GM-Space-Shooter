/// @description Criando os inimigos
// Você pode escrever seu código neste editor

// Criando os inimigos
instance_create_layer(irandom_range(64, room_width - 64), -room_height/4, "Enemies", obj_enemy_octopus);

// Reiniciando o alarme
alarm[0] = 60;
