/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

// Se o tiro passou muito para esquerda ou direita ele inverte a direção
if ((x > xstart + 25) || (x < xstart - 25)) {
	hspeed *= -1;
}