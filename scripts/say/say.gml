// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function say(text){
	obj_settings.currentlySaying = text;
	instance_create_depth(0, 0, 10, obj_text);
}