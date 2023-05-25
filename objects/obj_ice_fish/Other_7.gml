/// @description hurt and death
// You can write your code in this editor
if (sprite_index = spr_ice_fish_hurt) {
sprite_index = spr_ice_fish;
}

//REAL DEATH FINAL
if (sprite_index = spr_ice_fish_die) {
instance_create_layer(x, y, "player_layer", obj_Ice);
instance_destroy()
}