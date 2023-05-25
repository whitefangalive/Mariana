if distance_to_object(obj_diver) < 200 {
// Set the path follow speed to 0 so it stops moving
		
	if (obj_diver.attacking = 1) {
		path_speed = 0;
		// Get the distance to the player
		var dist_x = obj_diver.x - x;
		var dist_y = obj_diver.y - y;
		
	
		// If the X distance is less than -50 meaning the player is to the
		// LEFT of the baddie
		if (dist_x < -50)
		{
			path_speed = 0;
		x = x - 1;
			// Flip the sprite so it faces left instead of right
			image_xscale = -1 * abs((image_xscale));
		}
	
		// Otherwise,
		else
		{
			// If the X distance is greater than 50 meaning the player is to the
			// RIGHT of the baddie
			if (dist_x > 50)
			{
				path_speed = 0;
             x = x + 1;
				// But keep its original X scale so it faces right
				image_xscale = 1 * abs((image_xscale));
			}
		
			// Otherwise,
			else
			{
				// If the Y distance is less than -50 meaning the player is ABOVE the baddie
				if(dist_y < -30)
				{
					path_speed = 0;
	                  y = y -1;
				}
			
				// Otherwise,
				else
				{
					// Switch to the 'down attack' sprite as that's the only direction left
					path_speed = 0;
				y = y + 1; 
				}
			}
		}
	}
}