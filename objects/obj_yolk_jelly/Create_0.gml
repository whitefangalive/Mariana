flashAlpha = 0;
flashColor = c_white;
bTimer = 0;
randX = irandom_range(-50,50);
randY = irandom_range(-50,50);
moving = 0;
charge_attack = 0;
hostile = true;

// You can write your code in this editor
scale = 2;
image_xscale = scale;
image_yscale = scale;

maxHP = 3;
HP = maxHP;
maxInFrames = 80;
InFrames = 0 ;
damage = 1;
age = 0;
laidEggs = false;
layingEggsAge = 0;

switchDirTime = 200;
maxAge = 21000 + irandom_range(0, 150);

default_swim_speed = 0.9;
swim_speed = default_swim_speed;

randomTimer = 0;
maxRandomTimer = 50;