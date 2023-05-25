  
// You can write your code in this editor
scale = 0.3;
image_xscale = scale;
image_yscale = scale;
flashAlpha = 0;
flashColor = c_white;

maxHP = 2;
HP = maxHP;
maxInFrames = 30;
InFrames = 0 ;



swim_speed = (random(1.20) + 1);

path_ended = "false"; 

age = 0;
laidEggs = false;
layingEggsAge = 0;

switchDirTime = 100;
maxAge = 20000 + irandom_range(0, 150);