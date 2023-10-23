/// @description Desenhando na tela
// Você pode escrever seu código neste editor

// Definindo a posição no eixo x
var _x = 80;

// Garantindo que só vamos trabalhar com números inteiros
var _highest_score = round(highest_score);

// Definindo a fonte do texto
draw_set_font(fnt_score);

// Exibindo a maior pontuação na tela
var _text_highest_score = string_ext("Highest score - {0}", [_highest_score]);
draw_text(_x, 80, _text_highest_score);

// Exibindo o total de inimigos mortos
var _text_enemies_killed = string_ext("Total enemies killed - {0}", [global.total_enemies_killed]);
draw_text(_x, 140, _text_enemies_killed);

// Exibindo a quantidade de vezes que o player morreu
var _text_total_deaths = string_ext("Total deaths - {0}", [global.total_deaths]);
draw_text(_x, 200, _text_total_deaths);

// Resetando a fonte para o padrão
draw_set_font(-1);

// Incrementando os pontos na tela
if (highest_score < global.highest_score) {
	var _increment = global.highest_score * 0.01;	
	highest_score += _increment;
}
