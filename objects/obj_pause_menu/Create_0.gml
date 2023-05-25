width = 220;
height = 88;


op_border = 44;
op_space = 64;

pos = 0;

locked = false;

//pause menu
option[0, 0] = "Resume Game";
option[0, 1] = "Settings";
option[0, 2] = "Save and Quit"

//settings
option[1, 0] = "Window Size"
option[1, 1] = "Brightness"
option[1, 2] = "Controls"
option[1, 3] = ("Volume: " + (string(global.volume_setting*100))) 
option[1, 4] = "Back"

//controls

controlsArray = ["Up", "Left", "Down", "Right", "Interact", "Attack", "Map", "Boost", "Escape", "Inventory"];
currentControls = [obj_settings.key_up, obj_settings.key_left
, obj_settings.key_down, obj_settings.key_right
, obj_settings.key_select, obj_settings.key_attack
, obj_settings.key_map, obj_settings.key_dash
, obj_settings.key_escape, obj_settings.key_inventory];
for (var i = 0; i < 10; i++) {
	option[2, i] = controlsArray[i] + ": " + global._fhinputKeys[currentControls[i]];
}
option[2, 10] = "Back"


op_length = 0;
menu_level = 0;

