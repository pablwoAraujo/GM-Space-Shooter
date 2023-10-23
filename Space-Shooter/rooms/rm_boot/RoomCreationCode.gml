// Create da room - Ou seja, vai rodar SEMPRE que a room é criada
// Iniciando as variáveis globais

// Garantindo que o jogo seja aleatório
randomize()

// Pontuação mais alta
global.highest_score = 0;

// Quantiadade de vezes que o player morreu
global.total_deaths = 0;

// Total de inimigos mortos
global.total_enemies_killed = 0;

// Indo para a room inicial
room_goto(rm_start);
