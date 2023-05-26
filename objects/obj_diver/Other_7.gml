/// @description end attack
// You can write your code in this editor

if (sprite_index != spr_diver && (sprite_index != spr_floating) && sprite_index != spr_swimming) {
	attackingANI = 0;

	if ANItimer > 0 {
		ANItimer -= 1;
	}
	sprite_index = spr_floating;
	if (attacking = 1) {
		attacking = 0;
	}
	swim_speed = default_move_speed;
}

