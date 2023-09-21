/// @description hurt and death
// You can write your code in this editor

//HURT AND DEATH FINAl -----------------------------SPRITE INPUT
//REAL DEATH FINAL
if (sprite_index = spr_boogly_die) {
	instance_create_layer(x, y, "player_layer", obj_Fish_Eye);
	instance_destroy(object_index, true);
}