  
// You can write your code in this editor
scale = 0.6;
image_xscale = scale;
image_yscale = scale;
flashAlpha = 0;
flashColor = c_white;

maxHP = 5;
HP = maxHP;
maxInFrames = 30;
InFrames = 0 ;



swim_speed = (random(1.00) + 1);

path_ended = "false"; 

age = 0;
laidEggs = false;
layingEggsAge = 0;

switchDirTime = 150;
maxAge = 19000 + irandom_range(0, 150);

shine = instance_create_layer(x, y, "in_front_of_player", vfx_bioluminessense);
shine.image_blend = make_color_rgb(255, 255, 255);
shine.scaled = 2;
shine.spe = 0.5;
shine.image_alpha = 0.5;
shine.parent1 = id;
