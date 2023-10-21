/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (current_state != "state 04") {
	sprite_index = spr_boss;
}

var _damage;

_damage = keyboard_check(ord("L"));

if (_damage){
	current_life -= 10;	
}

changing_state();
