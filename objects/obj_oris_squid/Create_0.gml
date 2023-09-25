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

notRight = irandom_range(10, 13);


for  (var i = 0; i < irandom_range(10, 13); i++) {
	array_push(tentaclesRight, instance_create_layer(x, y, "behind_diver", obj_oris_squid_tentacle));
	tentaclesRight[i].squidId = id;
	with (tentaclesRight[i]) {
		numberOfTentacles = squidId.notRight;
		myNumber = i;
		allTentaclesAbove = squidId.tentaclesRight;
	}
}