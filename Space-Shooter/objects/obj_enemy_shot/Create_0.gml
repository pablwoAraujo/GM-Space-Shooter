/// @description Iniciando o tiro do inimigo
// Você pode escrever seu código neste editor

// Iniciando a velocidade vertical do tiro
shot_speed = 6;
vspeed = shot_speed;

// Aumentando o tamanho do tiro na criação da instância
image_xscale = 2;
image_yscale = 2;

// Definindo alarme para voltar o tiro para o tamanho normal
alarm[0] = 2;

selected_color = choose(c_yellow, c_red, c_fuchsia, c_lime, c_aqua, c_green, c_maroon, c_navy, c_olive);
