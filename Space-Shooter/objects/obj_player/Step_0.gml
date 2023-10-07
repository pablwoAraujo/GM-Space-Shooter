/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _up, _down, _left, _right;

_up = keyboard_check(ord("W"));
_left = keyboard_check(ord("A"));
_down = keyboard_check(ord("S"));
_right = keyboard_check(ord("D"));

y += (_down - _up) * player_speed;
x += (_right - _left) * player_speed;
