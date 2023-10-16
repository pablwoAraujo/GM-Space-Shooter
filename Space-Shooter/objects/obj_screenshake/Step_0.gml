/// @description Tremendo a tela
// Você pode escrever seu código neste editor

var _shakex = random_range(-intensity, intensity);
var _shakey = random_range(-intensity, intensity);

// Movendo a tela
camera_set_view_pos(view_camera[0], view_x + _shakex, view_y + _shakey);

// Diminuindo a intensidade do movimento -5% por step
intensity *= 0.95;

// Destruindo o objeto
if (intensity <= 0){
	instance_destroy();
}