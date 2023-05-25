/**
* Counts how many of a certain element are in an array
*
*/
function array_count(array, element){
	var count = 0;
	var len = array_length(array);
	for (var i = 0; i < len; i++) {
		if (array[i] == element) {
			count++
		}
	}
	return count;
}