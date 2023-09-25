image_xscale = squidId.image_xscale;
image_yscale = squidId.image_yscale;
if (myNumber == (array_length(allTentaclesAbove) - 1)) {
	sprite_index = spr_oris_squid_tentacle_end;
}

if (myNumber != 0) {
	var upperTent = allTentaclesAbove[myNumber - 1]; 
	var math = (sprite_height * dcos(upperTent.image_angle));
	var TentacleX = upperTent.x + (sprite_height * dsin(upperTent.image_angle));
	var TentacleY = upperTent.y + math;
	x = TentacleX;
	y = TentacleY;
}