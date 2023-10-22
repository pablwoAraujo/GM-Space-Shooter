/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _x = 80;

draw_set_font(fnt_score);

// Exibindo a maior pontuação na tela
var _highest_score = string_ext("Highest score - {0}", [global.highest_score]);
draw_text(_x,80, _highest_score);

// Exibindo o total de inimigos mortos
var _total_enemies_killed = string_ext("Total enemies killed - {0}", [global.total_enemies_killed]);
draw_text(_x,140, _total_enemies_killed);

// Exibindo a quantidade de vezes que o player morreu
var _total_deaths = string_ext("Total deaths - {0}", [global.total_deaths]);
draw_text(_x,200, _total_deaths);

draw_set_font(-1);