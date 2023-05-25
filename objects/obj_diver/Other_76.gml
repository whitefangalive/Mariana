if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "attacked":
		
	if ANItimer > 0 {ANItimer -= 1;}

	if ANItimer <= 0 {

	attackingANI = 0;
	}

	if (global.equipped[0] = "Basic Harpoon") {
	
		if (attackingANI = 0) {
			show_debug_message("animation end floating");
	sprite_index = spr_floating;
	if (attacking = 1) {
	attacking = 0;
	}
		}
	}

	swim_speed = default_move_speed;
        break;
    }
}