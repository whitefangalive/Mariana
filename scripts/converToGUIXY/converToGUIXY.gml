/// @desc Converts x,y in game world to gui x,y
/// @param {real} _x x position in game world
/// @param {real} _y y position in game world
/// @returns {array<Real>} array contains x,y position in gui
function converToGUIXY(Ex, Wy){
	var cl = obj_diver.x
	var ct = obj_diver.y

	var off_x = Ex - cl // x is the normal x position
	var off_y = Wy - ct // y is the normal y position
	// convert to gui
	var off_x_percent = off_x + view_get_wport(view_camera[0])/2
	var off_y_percent = off_y + view_get_hport(view_camera[0])/2
       
	var gui_x = off_x_percent * display_get_gui_width()
	var gui_y = off_y_percent * display_get_gui_height()
	
	return [off_x_percent, off_y_percent];
}