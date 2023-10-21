/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Aumentando a opacidade se o alfa for menor que um
if (image_alpha < 1 and !already) {
	image_alpha += 1/120;
}

if (scale > 1.5 or scale < 1) {
	scale_up *= -1;
}

scale += scale_up;