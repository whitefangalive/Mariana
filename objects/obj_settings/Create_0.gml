global.font_main = font_add_sprite(spr_font_fundant, 32, true, 1);
global.volume_setting = 1.00;
initKeys();
randomize();
gamepad_set_axis_deadzone(0, 0.3);

//Controls
key_escape = vk_escape;
key_select = vk_space;
key_dash = vk_shift;

key_down = ord("S");
key_up = ord("W");

key_left = ord("A");
key_right = ord("D");

key_map = vk_tab;
key_attack = mb_left;

key_inventory = ord("I");

textSpeed = 0.5;
textpos = 1;

fullscreen = false;
Resolution = [display_get_width(), display_get_height()]; 
respos = 3;
bloodEnable = true;
blood = true;
Borderless = false;

// saying for text
currentlySaying = [];
timesEnteredSub = 0;

//a variable to send a message to obj_diver when he needs to load his stats
needsToBeLoaded = false;
needsDeathLoaded = false;
loadPlayer = true;

needsLoading = [];

//a variable for waiting till you're in the room you died in

spawnX = 0;
spawnY = 0;
location1 = Room1;

//A variable to store where you used to be so you can be moved to correct cordinates
previousRoom = Room1;
code = "bimble";

achivements = [];

instance_create_layer(500, 500, "Instances", obj_start_menu);

window_set_fullscreen(obj_settings.fullscreen);
window_set_size(obj_settings.Resolution[0], obj_settings.Resolution[1]);
obj_settings.blood = obj_settings.bloodEnable;
window_set_showborder(!obj_settings.Borderless);
window_center();