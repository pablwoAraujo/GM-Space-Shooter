/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Criando as variáveis do objeto player
var _up, _down, _left, _right;

// Carregando as variáveis de movimentação
_up = keyboard_check(ord("W"));
_left = keyboard_check(ord("A"));
_down = keyboard_check(ord("S"));
_right = keyboard_check(ord("D"));

// Realizando a movimentação
y += (_down - _up) * player_speed;
x += (_right - _left) * player_speed;

// Fazendo o player atirar 
fire();

// Aumentando o nível do tiro manualmente
if (keyboard_check_pressed(vk_up)) {
	shot_level += 1;
}

// Diminuindo o nível do tiro manualmente
if (keyboard_check_pressed(vk_down)) {
	shot_level -= 1;
}

// Aumentando o cooldown do tiro manualmente (deixando lento)
if (keyboard_check_pressed(vk_left) && shot_cooldown < 100) {
	shot_cooldown *= 1.1;
}

// Diminuindo o cooldown do tiro manualmente (deixando rápido)
if (keyboard_check_pressed(vk_right) && shot_cooldown > 20) {
	shot_cooldown *= 0.9;
}
