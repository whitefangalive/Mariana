/// @description randomize

image_index = random(4);
function destroy() {
	instance_destroy();
	for (var i = 0; i < 4; i++) {
		var particle = instance_create_layer(x,y, "player_layer", vfx_wall_dest);
		particle.sprite_index = spr_wall_hold;
	}
}