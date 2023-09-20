// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_delete_element(array, element){
	for (var i = array_length(array) - 1; i >= 0 ; i--) {
		if (array[i] == element) {
			array_delete(array, i, 1);
		}
	}
}