/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

// Definindo a velocidade
speed = 6;

// Checando se o player existe
if (instance_exists(obj_boss)) {
	// Encontrando a direção do player
	direction = point_direction(x, y, obj_boss.x, obj_boss.y);
}

// OBS: Como a sprite esta apontando para baixo, temos duas opções:
// 1# Rotacionar a sprite em 90 graus para que a rotação dela seja de 0 graus
// 2# Adicionar esses 90 graus manualmente

// Escolhendo a opção 2 - Fazendo ele ganhar 90 graus
image_angle = direction + 90;
