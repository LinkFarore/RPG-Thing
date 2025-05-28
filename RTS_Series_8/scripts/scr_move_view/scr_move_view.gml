/// @description scr_move_view()
function scr_move_view() {

	// Get keyboard input
	var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	var down = keyboard_check(vk_down) || keyboard_check(ord("S"));

	// Move the view according to the keyboard input
	if (right) {
	    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (6) );
	}

	if (left) {
	    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (6) );
	}

	if (up) {
	    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (6) );
	}

	if (down) {
	    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (6) );
	}

}
