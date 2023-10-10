/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Desenhar o elemento na tela
draw_self();

// Alterando como o video trata as cores
gpu_set_blendmode(bm_add);

// Desenhando o brilho
draw_sprite_ext(
	shot_glow, 
	image_index, 
	x, 
	y, 
	image_xscale * 0.7, 
	image_yscale * 0.7, 
	image_angle, 
	selected_color, 
	0.3
);

// Voltando para a configuração padrão
gpu_set_blendmode(bm_normal);