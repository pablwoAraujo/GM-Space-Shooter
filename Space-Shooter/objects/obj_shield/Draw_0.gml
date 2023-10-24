/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Definindo o blendmode
gpu_set_blendmode(bm_add);

// Desenhando a sprite
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

// Resetando o blendmode
gpu_set_blendmode(bm_normal);
