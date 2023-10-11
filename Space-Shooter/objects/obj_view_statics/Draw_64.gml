/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _xx = 1050;

// Exibindo as estatísticas na tela se o usuário ativar a opção
if (statistics_for_nerds){
	// Verificando se o player existe na tela
	if (instance_exists(obj_player)) {
		var _player_speed = string_ext("Speed: {0} (MAX 10)", [obj_player.player_speed]);
		draw_text(_xx, 20, _player_speed);
		var _player_shot_level = string_ext("Shot level: {0} (MAX 5)", [obj_player.shot_level]);
		draw_text(_xx, 40, _player_shot_level);
		var _player_cooldown = string_ext("Cooldown: {0} (MIN 20)", [obj_player.shot_cooldown]);
		draw_text(_xx, 60, _player_cooldown);
	}
}
