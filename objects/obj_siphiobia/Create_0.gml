stemBody = [];
length = sprite_width - 3;
flashAlpha = 0;
flashColor = c_white;
randX = irandom_range(-50,50);
randY = irandom_range(-50,50);

scale = 1;
image_xscale = scale;
image_yscale = scale;

maxHP = 8;
HP = maxHP;

damage = 1;
age = 0;
laidEggs = false;
layingEggsAge = 0;

switchDirTime = 200;
maxAge = 70100 + irandom_range(0, 2050);

default_swim_speed = 4;
swim_speed = default_swim_speed;
rotation_speed = 1;

randomTimer = 0;
maxRandomTimer = 50;

EEx = obj_diver.x;
EEy = obj_diver.y;

numberOfSegments = irandom_range(50, 150);
for  (var i = 0; i < numberOfSegments; i++) {
	array_push(stemBody, instance_create_layer(x, y, "behind_diver", obj_siphiobia_segment));
	stemBody[i].squidId = id;
	stemBody[0].x = x + (length);
	stemBody[0].y = y + 0;
	with (stemBody[i]) {
		numberOfTentacles = squidId.numberOfSegments;
		myNumber = i;
		allTentaclesAbove = squidId.stemBody;
		if (myNumber != 0) {
			var upperTent = allTentaclesAbove[myNumber - 1]; 
			var TentacleX = upperTent.x + (length * dcos(upperTent.image_angle));
			var TentacleY = upperTent.y + (length * dsin(upperTent.image_angle));
			x = TentacleX;
			y = TentacleY;
		}
	}
}

