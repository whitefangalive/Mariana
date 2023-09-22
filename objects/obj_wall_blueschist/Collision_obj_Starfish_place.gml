var starfish = instance_nearest(x, y, obj_Starfish_place);
if (starx == 0) {
	starx = starfish.x;
	stary = starfish.y;
}
frameTimer++;
if (frameTimer > 3) {
	frameTimer = 0;
	frame++;
}
if (frame == 19) {
	instance_destroy();
		for (var i = 0; i < 2; i++) {
			var particle = instance_create_layer(x,y, "player_layer", vfx_wall_dest);
			particle.sprite_index = spr_wall_destructible_by_star;
		}
};