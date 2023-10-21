/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (life > 0) {
	life --;
	
	// Diminuindo a transparencia
	image_alpha -= 0.07;
} else {
	instance_destroy();	
}

instance_destroy(other);