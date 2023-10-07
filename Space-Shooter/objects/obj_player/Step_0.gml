/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Movendo para cima
if (keyboard_check(ord("W"))){
	y -= player_speed;
}

// Movendo para esquerda
if (keyboard_check(ord("A"))){
	x -= player_speed;
}

// Movendo para baixo
if (keyboard_check(ord("S"))){
	y += player_speed;
}

// Movendo para direita
if (keyboard_check(ord("D"))){
	x += player_speed;
}