// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_read(array){
	for (var i = 0; i < array_length(array); i++) {
		show_debug_message(array[i]);
	}
}