  
// You can write your code in this editor
image_xscale = 2;
image_yscale = 2;
flashAlpha = 0;
flashColor = c_white;

maxHP = 5;
HP = maxHP;
maxInFrames = 30;
InFrames = 0 ;



swim_speed = (random(1.00) + 1);

path_start(path_to_follow,  swim_speed, path_action_continue, false); 
path_ended = "false"; 

soundTimer = 0;
maxSoundTime = 60;
audio_emitter = audio_emitter_create();
audio_emitter_position(audio_emitter, x, y, 0);

// Use a linear distance falloff model
audio_falloff_set_model(audio_falloff_exponent_distance);
age = 0;
laidEggs = false;
layingEggsAge = 0;

switchDirTime = 200;
maxAge = 21000 + irandom_range(0, 150);