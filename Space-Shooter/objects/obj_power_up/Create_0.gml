/// @description Iniciando
// Você pode escrever seu código neste editor

// Define o tipo de power up randomicamente
// Entre 0 e 45 ele cria um power up do cooldown (tempo de espera)
// Entre 46 e 90 ele cria um power up da velocidade
// Entre 91 a 100 ele cria um power up do nível do tiro
probability = irandom(100);

// Dando uma direção randomica e fazendo ele se mover
speed = 2 ;
direction = irandom(359);

// Selecionando a cor do efeito de brilho
if (probability > 90) { // nível do tiro
	selected_color = c_red;
} else if (probability > 45) {	// velocidade
	selected_color = c_yellow;
} else { // cooldown
	selected_color = c_aqua;	
}

// Iniciando o alarme da autodestruição depois de 2 segundos
alarm[0] = 60 * 2;
