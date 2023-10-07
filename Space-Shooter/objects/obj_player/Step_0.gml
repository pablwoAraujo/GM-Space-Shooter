/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Criando as variáveis do objeto player
var _up, _down, _left, _right, _fire;

// Carregando as variáveis de movimentação
_up = keyboard_check(ord("W"));
_left = keyboard_check(ord("A"));
_down = keyboard_check(ord("S"));
_right = keyboard_check(ord("D"));

// Carregando a variável de tiro
_fire = keyboard_check_pressed(vk_space);

// Realizando a movimentação
y += (_down - _up) * player_speed;
x += (_right - _left) * player_speed;

// Fazendo o player atirar 
if (_fire) {
	instance_create_layer(x, y - (sprite_height/2), "Shots", obj_player_shot);	
}