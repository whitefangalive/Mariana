/**
*
*Checks to see if an array contains an element returns index if found
* otherwise returns -1
*
*Author: Kyle Gann 
*
*/
function array_contains(array, element) {
	var len = array_length(array);
	for (var i = 0; i < len; i++) {
		if (array[i] == element) {
			return i;
		}
	}
	return -1;
}