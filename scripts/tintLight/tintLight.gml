/**
* a script for all light affected entities that causes them to tint black based on room
*/
function tintLight(){
	switch (room) {
		case Room1_thorium:
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, 0.5);
		break;
		default:
		
		break;
	}
}