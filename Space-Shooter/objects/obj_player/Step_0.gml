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
if (_shield and shields > 0){
	var _player_shield = instance_create_layer(x, y, "Shield", obj_shield);
	// Definindo o target do escudo
	_player_shield.target = id;
	// Diminuindo a quantidade de escudos disponíveis
	shields --;
}

// Realizando a movimentação
y += (_down - _up) * player_speed;
x += (_right - _left) * player_speed;

// Garantindo que o player não saia da tela
x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);

// Fazendo o player atirar 
fire();
