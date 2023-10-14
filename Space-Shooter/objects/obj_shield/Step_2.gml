/// @description Garantir que roda depois do player
// Você pode escrever seu código neste editor

// Se ele não tiver um alvo ele se autodestroi
if (!target) {
	instance_destroy(id, false);
}

x = target.x;
y = target.y;
