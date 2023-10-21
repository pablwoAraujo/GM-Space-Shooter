/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Se voltar para o indice zero, ele é destruído
if (image_index == 0){
	target.active_shield = false;
	instance_destroy();
}
// Avançando a animação do escudo se desgastando
image_index --;
image_alpha -= 0.2;

// Reiniciando o alarme a cada 1 segundo
alarm[0] = 60;