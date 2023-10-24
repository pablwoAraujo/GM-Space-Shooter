/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Se a transparencia for menor que um
if (!changed_room) {
	// aumente a transparencia a cada passo
	alpha += 0.02;
} else {
	alpha -= 0.01;	
}

// Se a tela escureceu por completo
if (alpha >= 1) {
	// Mude para a próxima room
	room_goto(destination);	
	changed_room = true;
}

if (alpha <= 0) {
	instance_destroy();	
}
