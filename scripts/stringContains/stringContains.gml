/**
* Checks to see if a string contains the substring 
**/
function stringContains(str, substring){
	var result = false;
	for (var i = 0; i < string_length(str); i++) {
		if (string_copy(str, i, string_length(substring)) == substring) {
			result = true;
		}
	}
	return result;
}