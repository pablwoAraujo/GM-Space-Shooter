/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Se desenhando
draw_self();

// Alterando como o video trata as cores
gpu_set_blendmode(bm_add);

// Desenhando o brilho

draw_sprite_ext(
	sprite_index, 
	image_index, 
	x, 
	y, 
	image_xscale * 1.2, 
	image_yscale * 1.2, 
	image_angle, 
	selected_color, 
	image_alpha - 0.5
);

// Voltando para a configuração padrão
gpu_set_blendmode(bm_normal);
