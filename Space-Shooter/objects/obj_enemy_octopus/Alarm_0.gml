/// @description Atirando
// Você pode escrever seu código neste editor

// Só atira se o inimigo já estiver na tela do player
fire();

// Reinicia o alarme
alarm[0] = random_range(1, 3) * room_speed;
