mvSpeed = 9;
threshold = 1;
opacity = 1;
rateOfChange = 0.125;


function EaseInQuad(inputvalue,outputmin,outputmax,inputmax) {

	inputvalue /= inputmax;
	return outputmax * inputvalue * inputvalue + outputmin;
}