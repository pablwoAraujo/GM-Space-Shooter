/// @description Iniciando
// Você pode escrever seu código neste editor

// Define o tipo de power up randomicamente
// Entre 0 e 40 ele cria um power up do cooldown (tempo de espera)
// Entre 41 e 80 ele cria um power up da velocidade
// Entre 81 e 90 ele cria um power up que adiciona mais um escudo para o plyaer (LIMITE=3)
// Entre 91 e 100 ele cria um power up do nível do tiro
probability = irandom(100);

// Dando uma direção randomica e fazendo ele se mover
speed = 2 ;
direction = irandom(359);

// Selecionando a cor do efeito de brilho
if (probability > 90) { // nível do tiro
	selected_color = c_red;
} else if (probability > 80) { // nível do tiro
	selected_color = c_gray;
} else if (probability > 40) {	// velocidade
	selected_color = c_yellow;
} else { // cooldown
	selected_color = c_aqua;
}

// Iniciando o alarme da autodestruição depois de 2 segundos
alarm[0] = 60 * 2;
