/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Exibindo a pontuação na tela
var _score_text = string_ext("SCORE: {0}", [game_score]);
draw_text(20,20, _score_text);

// Exibindo o nível na tela
var _level_text = string_ext("LEVEL: {0}", [game_level]);
draw_text(20,40, _level_text);