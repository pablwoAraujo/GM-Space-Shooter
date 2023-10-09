/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.5, image_yscale * 1.5, image_angle, colors, 0.5);
gpu_set_blendmode(bm_normal);
