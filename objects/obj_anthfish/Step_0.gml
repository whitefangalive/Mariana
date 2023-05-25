if distance_to_object(obj_diver) < 800 {
path_speed = swim_speed;
dist_x = obj_diver.x - x;
dist_y = obj_diver.y - y;
// DOCILE BEHAVIOR
	if (obj_diver.attacked_recently >= 1) {
		
		// Get the distance to the player

		// if right swim left
	if((dist_x < 400 && (dist_x > 0)) && (!place_meeting(x-swim_speed, y, obj_collision_parent)))
		{
		path_end();
		path_ended = "true";
	
	    x = x - (swim_speed);
		
	
		image_xscale = -2;
		}
	// if left swim right

	if ((dist_x > -400 &&  (dist_x < 0)) && (!place_meeting(x+swim_speed, y, obj_collision_parent)))
				{
					path_end(); 
					path_ended = "true";
 
	                  x = x + (swim_speed);
					 image_xscale = 2;
				} 

	//if below swim up
	if(((dist_y < 400 && (dist_y > 0)) && (!place_meeting(x, y-swim_speed, obj_collision_parent))) && (y > 0))
		{
		path_end();
		path_ended = "true";
		
	    y = y - (swim_speed);
		
		} 
	// if above swim down
	if ((dist_y > -400 && (dist_y < 0)) && (!place_meeting(x, y+swim_speed, obj_collision_parent)))
				{
					path_end();
					path_ended = "true";
					
	                  y = y + (swim_speed);
				} 
	}
//Resart pathing if far away
if (((abs(dist_x) >= 450 || abs(dist_y) >= 450)) && (path_ended == "true")) {
path_start(path_to_follow,  swim_speed, path_action_continue, false); 
  path_ended = "false";
} else {
//reset pathing if haven't attacked in awhile
 if ((obj_diver.attacked_recently = 0) && (path_ended == "true")) {
path_start(path_to_follow,  swim_speed, path_action_continue, false); 
  path_ended = "false";
 }
}
	if (InFrames >= 1) {
	 InFrames -= 1;
	}
	
	//DEATH -------------------------------------- Sprite input
	if (HP <= 0) {
		InFrames = 200; 
	    swim_speed = 0;
		sprite_index = spr_boogly_die;
	}
}

if (flashAlpha > 0) {
	flashAlpha -= 0.05;
}

if (flashAlpha > 0.05) {
	move_towards_point(obj_diver.x, obj_diver.y, -3);	
} else {
	if (flashAlpha = 0.05) {
speed = 0;
	}
}


soundTimer++;
if (soundTimer > maxSoundTime) {
	maxSoundTime = irandom_range(200, 270);
	soundTimer = 0;
	audio_play_sound_at(sfx_anthfish, x, y, 0, 200, 50, 10, false, 1, global.volume_setting);
}
