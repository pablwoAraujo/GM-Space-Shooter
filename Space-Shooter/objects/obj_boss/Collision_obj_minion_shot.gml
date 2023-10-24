/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _life = 5;

if (current_life + _life <= maximum_life){
	current_life += _life;	
	instance_destroy(other);
}