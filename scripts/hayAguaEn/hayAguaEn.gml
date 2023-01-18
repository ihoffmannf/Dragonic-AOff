/// @description  hayAguaEn(x, y)
/// @param x
/// @param y
function hayAguaEn(argument0, argument1) {

	var xPos = argument0
	var yPos = argument1
	return tile_layer_find(1000, xPos, yPos) != -1 && tile_layer_find(10000, xPos, yPos)  != -1 && tile_layer_find(100000, xPos, yPos) != -1 && tile_layer_find(1000000, xPos, yPos) != -1 && tile_layer_find(10000000, xPos, yPos) != -1
	
}
