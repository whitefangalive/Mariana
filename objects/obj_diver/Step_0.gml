if aTimer >= 1 {aTimer -= 1;}


//floating animation
if (attackingANI = 0 && ((sprite_index != spr_divr_attacking_side) || (sprite_index != spr_diver_attacking_up) || (sprite_index != spr_diver_attacking_down))) {
	if ((keyboard_check(obj_settings.key_left) = 0) && (keyboard_check(obj_settings.key_right) = 0)) {
	sprite_index = spr_floating;

	} else {
		sprite_index = spr_swimming;
	}
 }

// You can write your code in this editor
if (global.inventoried == false) {
		if (swim_speed !=6.5 || swim_speed != 10) {
		key_w = (keyboard_check(obj_settings.key_up) || (gamepad_axis_value(0, gp_axislv) < 0));
		key_s = (keyboard_check(obj_settings.key_down) || (gamepad_axis_value(0, gp_axislv) > 0));
		key_a = keyboard_check(obj_settings.key_left) || (gamepad_axis_value(0, gp_axislh) < 0);
		key_d = keyboard_check(obj_settings.key_right) || (gamepad_axis_value(0, gp_axislh) > 0);
		}
}
if key_a == 1 {
	image_xscale = -1;
	input_direction = 180;
}
if key_d == 1 {
	input_direction = 0;
	image_xscale = 1;
}
if key_s == 1 {
	if ((keyboard_check(obj_settings.key_up) = 0) && (keyboard_check(obj_settings.key_left) = 0) && (keyboard_check(obj_settings.key_right) = 0)) {
	input_direction = 270;
	}
}
if key_w == 1 {
	input_direction = 90;
}

	var Hmove = key_d - key_a;

	hsp = Hmove * swim_speed;

	var Vmove = key_s - key_w;

	vsp = Vmove * swim_speed;

while_counter = 0;


if (place_meeting(x,y+swim_speed,obj_collision_parent)) {
	 if attackingANI = 0 {
  sprite_index = spr_diver;
	}
}

//vertical moving collide
if (place_meeting(x,y+vsp,obj_collision_parent)) {
while (!place_meeting(x,y+sign(vsp),obj_collision_parent) && (while_counter < 50)) {
  y = y + sign(vsp);
  while_counter = while_counter + 1;
   }
 vsp = 0;
}
// horizontal moving collide
if (place_meeting(x+hsp,y,obj_collision_parent)) {
while ((!place_meeting(x+sign(hsp),y,obj_collision_parent)) && (while_counter < 50)) {
  x = x + sign(hsp);
  while_counter = while_counter + 1;
   }
 hsp = 0;
}

if (global.inventoried == false && (obj_game.mapOpen == false)) {

	x = x + hsp;
	y = y + vsp;

}

if (attacked_recently >= 1) {
	attacked_recently -= 1;
}

// Set the audio listener's position to the player's position
audio_listener_position(x, y, 0);

if ANItimer > 0 {ANItimer -= 1;}

if (flashAlpha > 0) {
	flashAlpha -= 0.08;
}
//being flung after getting hit
if (flashAlpha > 0) {

	move_towards_point(attackedFromX, attackedFromY, -6);
	if (place_meeting(x, y, obj_collision_parent)) {
		move_towards_point(attackedFromX, attackedFromY, 7);
	}
} 

	if (flashAlpha = 0.04) {
		speed = 0;
	}
	
	if (InFrames >= 1) {
	 InFrames -= 1;
	}
//---------------------------- TAKKING OF DAMAGE

if global.player_health <= 0 {
	with (instance_create_layer(x, y, "player_layer", obj_dead_diver)) {
		container = global.inventory;
	}
	saveGame(string(room) + ".save");
	saveGame("savedgame.save");
	show_debug_message("Died");
	room_goto(roomDeath);
}

//booster

//if (global.equipped[1] == "Booster") {
//	if ( keyboard_check(obj_settings.key_dash)) {
//		if (global.oxygen >= 1) {
//			swim_speed = 10;
//			global.oxygen -= 0.1;
//		}
//	} else {
//		swim_speed = default_move_speed;
//	}
//}

if (global.equipped[1] == "Booster") {
	if ( keyboard_or_mouse_check_pressed(obj_settings.key_dash) && boosterCooldown <= 0) {
		boosterTimer = 15;
		boosterCooldown = 30;
	}
	if (boosterTimer > -1) {
		boosterTimer--;
		swim_speed = default_move_speed;
	}
	if (boosterCooldown > 0) {
		boosterCooldown--;
	}
	if (boosterTimer > 0) {
		swim_speed = 10;
	} else {

	}
}

bubbleTimer++;
if (bubbleTimer > 60) {
	bubbleTimer = 0;
	instance_create_layer(x+random_range(-20,20), y+random_range(-20,20), "behind_diver", vfx_bubble);
}

if (global.oxygen <= 0 && bubbleTimer == 59) {
	delt(1, x, y+1);
}


if (keyboard_or_mouse_check_pressed(obj_settings.key_attack)) {
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
	if (attacking = 0) {
	image_index = 0;
	attacking = 1;
	}

	attackingANI = 1;
	ANItimer = 0;

	attacked_recently = 120;
	// attacking
	if (attacking == 1) {
		if (aTimer <= 0) {

			aTimer = 58;

			if (input_direction = 0) {
				image_xscale = 1;

				sprite_index = spr_divr_attacking_side;
				if sprite_index = spr_divr_attacking_side {
				audio_sound_gain(sfx_attacking_any,global.volume_setting, 0)
				audio_play_sound(sfx_attacking_any, 5, false);
				}

			} else {
			 if (input_direction = 180)
			 {
			 image_xscale = -1;

			 sprite_index = spr_divr_attacking_side;
	 
			 if (sprite_index = spr_divr_attacking_side) {
			 audio_sound_gain(sfx_attacking_any,global.volume_setting, 0)
			audio_play_sound(sfx_attacking_any, 5, false);
			 }
			 } else {
				 if (input_direction = 90) {
		
					sprite_index = spr_diver_attacking_up;
				   if sprite_index = spr_diver_attacking_up {
			   audio_sound_gain(sfx_attacking_any,global.volume_setting, 0);
			audio_play_sound(sfx_attacking_any, 5, false);
				   }
			   } else {
			    if (input_direction = 270) {
			
					sprite_index = spr_diver_attacking_down;
			
					if sprite_index = spr_diver_attacking_down {
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

}


if (image_index >= image_number - 0.07) {
	if (sprite_index != spr_diver && (sprite_index != spr_floating) && sprite_index != spr_swimming) {
		attackingANI = 0;

		if ANItimer > 0 {
			ANItimer -= 1;
		}
		sprite_index = spr_floating;
		if (attacking == 1) {
			attacking = 0;
		}
		swim_speed = default_move_speed;
	}


}

