/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Se o objeto sair da room, destrua sem ativar o evento de destruição
if (y >= room_height + 100){
	instance_destroy(id, false);
}
