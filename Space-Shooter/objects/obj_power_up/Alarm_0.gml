/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Diminuindo a opacidade em 10%
image_alpha -= 0.1;

// Se destruindo caso o alpha for menor que 0.3
if (image_alpha <= 0) {
	instance_destroy(id, false);
}

// Reiniciando o alarme a cada 1 segundo
alarm[0] = 60 * 1;
