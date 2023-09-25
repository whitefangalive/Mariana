flashAlpha = 0;
flashColor = c_white;
randX = irandom_range(-50,50);
randY = irandom_range(-50,50);

// You can write your code in this editor
scale = 3;
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

default_swim_speed = 0.2;
swim_speed = default_swim_speed;

randomTimer = 0;
maxRandomTimer = 50;

tentaclesRight = [];
tentaclesFarRight = [];
tentaclesLeft = [];
tentaclesFarLeft = [];
tentaclesBack = [];

notRight = irandom_range(11, 15);
for  (var i = 0; i < irandom_range(10, 13); i++) {
	array_push(tentaclesRight, instance_create_layer(x, y, "behind_diver", obj_oris_squid_tentacle));
	tentaclesRight[i].squidId = id;
	with (tentaclesRight[i]) {
		numberOfTentacles = squidId.notRight;
		myNumber = i;
		allTentaclesAbove = squidId.tentaclesRight;
	}
}

notFarRight = irandom_range(9, 12);
for  (var i = 0; i < irandom_range(10, 13); i++) {
	array_push(tentaclesFarRight, instance_create_layer(x, y, "in_front_of_player", obj_oris_squid_tentacle));
	tentaclesFarRight[i].squidId = id;
	with (tentaclesFarRight[i]) {
		numberOfTentacles = squidId.notFarRight;
		myNumber = i;
		allTentaclesAbove = squidId.tentaclesFarRight;
	}
}

notLeft = irandom_range(11, 15);
for  (var i = 0; i < irandom_range(10, 13); i++) {
	array_push(tentaclesLeft, instance_create_layer(x, y, "behind_diver", obj_oris_squid_tentacle));
	tentaclesLeft[i].squidId = id;
	with (tentaclesLeft[i]) {
		numberOfTentacles = squidId.notLeft;
		myNumber = i;
		allTentaclesAbove = squidId.tentaclesLeft;
	}
}

notFarLeft = irandom_range(9, 12);
for  (var i = 0; i < irandom_range(10, 13); i++) {
	array_push(tentaclesFarLeft, instance_create_layer(x, y, "in_front_of_player", obj_oris_squid_tentacle));
	tentaclesFarLeft[i].squidId = id;
	with (tentaclesFarLeft[i]) {
		numberOfTentacles = squidId.notFarLeft;
		myNumber = i;
		allTentaclesAbove = squidId.tentaclesFarLeft;
	}
}

notBack = irandom_range(18, 21);
for  (var i = 0; i < irandom_range(10, 13); i++) {
	array_push(tentaclesBack, instance_create_layer(x, y, "behind_diver", obj_oris_squid_tentacle));
	tentaclesBack[i].squidId = id;
	with (tentaclesBack[i]) {
		numberOfTentacles = squidId.notBack;
		myNumber = i;
		allTentaclesAbove = squidId.tentaclesBack;
		scaledValue = 0.8;
	}
}

middleRight = instance_create_layer(x, y, "in_front_of_player", obj_oris_squid_tentacle);
middleRight.squidId = id;
with (middleRight) {
	numberOfTentacles = 1;
	myNumber = 0;
	allTentaclesAbove = [squidId.middleRight];
	scaledValue = 1.5;
}

middleLeft = instance_create_layer(x, y, "in_front_of_player", obj_oris_squid_tentacle);
middleLeft.squidId = id;
with (middleLeft) {
	numberOfTentacles = 1;
	myNumber = 0;
	allTentaclesAbove = [squidId.middleLeft];
	scaledValue = 1.5;
}

