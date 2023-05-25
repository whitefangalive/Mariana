width = 220;
height = 88;
global.volume_setting = 1.00;

op_border = 44;
op_space = 64;

pos = 0;

//pause menu
option[0, 0] = "Load Game";
option[0, 1] = "New Game";
option[0, 2] = "Settings";
option[0, 3] = "Quit Game"


//settings
option[1, 0] = "Window Size"
option[1, 1] = "Brightness"
option[1, 2] = "Controls"
option[1, 3] = ("Volume: " + (string(global.volume_setting*100))) 
option[1, 4] = "Back"

op_length = 0;
menu_level = 0;
