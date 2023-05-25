// get input
key_w = keyboard_check_pressed(obj_settings.key_up) || (gamepad_axis_value(0, gp_axislv) < 0);
key_s = keyboard_check_pressed(obj_settings.key_down) || (gamepad_axis_value(0, gp_axislv) > 0);
key_accept = keyboard_check_pressed(obj_settings.key_select);

//storen number of otpions
op_length = array_length(option[menu_level]);

//move through menu
pos += key_s - key_w;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length -1};

//using menu
if key_accept {
audio_play_sound(sfx_select, 2, false);
	var _sml = menu_level;
		
	switch (menu_level) {
	
		//pause menu
		case 0:
			switch(pos) {
			//load game
			case 0:
			switchMusicTo(m_watery_grave, sfx_pickup, false, 100);
			loadGame("savedgame.save", true); 
			break;
			//new game
			case 1: 
			switchMusicTo(m_watery_grave, sfx_pickup, false, 100);
			room_goto(Room1);
			for (var i = 0; i < 25; i++) {
				if file_exists(string(i) + ".save")
				{
					file_delete(string(i) + ".save");
				}
			}
			break;
			//settings
		    case 2: menu_level = 1;  break;
		    //end game
		    case 3: game_end(); break;
			 }
		 break;
		 case 1:
			switch (pos) {
				//window settings
			case 0: 
		
			break;
				//brightness
			case 1: 
		
			break;
				//controls
			case 2: 
		
			break;
				//volume
			case 3: 
			if global.volume_setting >= 0.10 
				{
					global.volume_setting -= 0.10;
				} else {
				global.volume_setting = 1.00;
				}
			changeVolume(m_watery_grave);
			option[1, 3] = ("Volume: " + string(global.volume_setting*100)) 
			break;
			//back
			case 4: 
			menu_level = 0;
			break;
		
			}
		 break;
	 
		}
		
	// set pos back
	if _sml != menu_level {pos = 0};
	
	//correct option length
	op_length = array_length(option[menu_level]);

}

// sound
if (keyboard_check_pressed(obj_settings.key_down)) {
	audio_play_sound(sfx_move_selected, 2 ,false);
	audio_sound_gain(sfx_move_selected, global.volume_setting, 0);
}

if (keyboard_check_pressed(obj_settings.key_up)) {
	audio_play_sound(sfx_move_selected, 2 ,false);
	audio_sound_gain(sfx_move_selected, global.volume_setting, 0);
}