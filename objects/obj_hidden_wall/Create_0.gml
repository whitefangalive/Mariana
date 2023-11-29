function EaseLinear(inputvalue,outputmin,outputmax,inputmax) {
	return outputmax * inputvalue / inputmax + outputmin;
}

function EaseInQuad(inputvalue,outputmin,outputmax,inputmax) {

	inputvalue /= inputmax;
	return outputmax * inputvalue * inputvalue + outputmin;
}

alpha = 1;
image_alpha = alpha;
changeSpeed = 0.025;

