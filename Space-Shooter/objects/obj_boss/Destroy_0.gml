/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

giving_points(200);

// Criando a sequência de destruição
layer_sequence_create("Boss_Defeat", x, room_height/2 - 32, seq_boss_defeat);

// Contabilizando o número de inimigos mortos
global.total_enemies_killed++;

// Criando o screenshake ao ser destruído
screenshake(20);	

