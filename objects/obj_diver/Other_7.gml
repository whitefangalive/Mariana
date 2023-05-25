/// @description end attack
// You can write your code in this editor
attackingANI = 0;
attacking = 0;
if (sprite_index != spr_diver && (sprite_index != spr_floating) && sprite_index != spr_swimming) {

	if ANItimer > 0 {ANItimer -= 1;}

	if ANItimer <= 0 {
	attackingANI = 0;
	}

		if (attackingANI = 0 && ((sprite_index = spr_divr_attacking_side) || (sprite_index = spr_diver_attacking_up) || (sprite_index = spr_diver_attacking_down))) {
			
			sprite_index = spr_floating;
			if (attacking = 1) {
			attacking = 0;
			}
		}
	swim_speed = default_move_speed;
}

