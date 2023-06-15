//converts 0s and 1s into true false as a string!
// so if given 0 it will return false if given 1 it will return true as a string,
function toBoolOrBinary(value){
	var stringy = "False";
	if (value == 0) {
		stringy = "False";
	} else {
		stringy = "True";
	}
return stringy;
}