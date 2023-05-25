	/// @description attacking
	if (global.inventoried == false && (obj_game.mapOpen == false)) {
	switch (global.equipped[0]) {
		case "Basic Harpoon":
			global.attack_damage = 1;
		break;
		case "Steel Harpoon":
			global.attack_damage = 1.5;
		break;
		case "Crab Claw":
			global.attack_damage = 2;
		break;
		default:
			global.attack_damage = 1;
		break;
	}
	left_release = 0;
	if (attacking = 0) {
	image_index = 0;
	attacking = 1;
	}

	attackingANI = 1;
	ANItimer = 0;

	attacked_recently = 120;
	// attacking
	if (attacking = 1) {
		if (aTimer <= 0) {

	aTimer = 58;

	if (input_direction = 0) {
	image_xscale = 1;

	sprite_index = spr_divr_attacking_side;
	if sprite_index = spr_divr_attacking_side && attacked_recently > 119 {
	audio_sound_gain(sfx_attacking_any,global.volume_setting, 0)
	audio_play_sound(sfx_attacking_any, 5, false);
	}

	} else {
	 if (input_direction = 180)
	 {
	 image_xscale = -1;

	 sprite_index = spr_divr_attacking_side;
	 
	 if (sprite_index = spr_divr_attacking_side && attacked_recently > 119) {
	 audio_sound_gain(sfx_attacking_any,global.volume_setting, 0)
	audio_play_sound(sfx_attacking_any, 5, false);
	 }
	 } else {
		 if (input_direction = 90) {
		
			sprite_index = spr_diver_attacking_up;
		   if sprite_index = spr_diver_attacking_up && attacked_recently > 119 {
	   audio_sound_gain(sfx_attacking_any,global.volume_setting, 0);
	audio_play_sound(sfx_attacking_any, 5, false);
		   }
	   } else {
	    if (input_direction = 270) {
			
			sprite_index = spr_diver_attacking_down;
			
			if sprite_index = spr_diver_attacking_down && attacked_recently > 119 {
				audio_sound_gain(sfx_attacking_down,global.volume_setting, 0);
				audio_play_sound(sfx_attacking_down, 5, false);
				global.attack_damage *= irandom_range(1.01, 1.5); 
				swim_speed = 6.5;
			}
		}
	   }
	 }
	 }
	}
	}
}

