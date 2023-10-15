/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Criando as variáveis do objeto player
var _up, _down, _left, _right, _shield;

// Carregando as variáveis de movimentação
_up = keyboard_check(ord("W"));
_left = keyboard_check(ord("A"));
_down = keyboard_check(ord("S"));
_right = keyboard_check(ord("D"));
_shield = keyboard_check_pressed(ord("E"));

// Criando o escudo
if (_shield){
	var _player_shield = instance_create_layer(x, y, "Shield", obj_shield);
	// Definindo o target do escudo
	_player_shield.target = id;
}

// Realizando a movimentação
y += (_down - _up) * player_speed;
x += (_right - _left) * player_speed;

// Fazendo o player atirar 
fire();

show_debug_message(life);
