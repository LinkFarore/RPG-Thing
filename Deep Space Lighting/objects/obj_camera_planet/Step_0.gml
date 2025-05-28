x = obj_player_planet.x;
y = obj_player_planet.y;

with (obj_camera_planet) {
var xTo,yTo;

var haxis = gamepad_axis_value(0, gp_axisrh);
var vaxis = gamepad_axis_value(0, gp_axisrv);


move_towards_point(mouse_x,mouse_y,0);

//xTo = obj_player_planet.x + lengthdir_x(min(138,distance_to_point(mouse_x,mouse_y)),direction);//96
//yTo = obj_player_planet.y + lengthdir_y(min(138,distance_to_point(mouse_x,mouse_y)),direction);

//x += (xTo-x)/25;
//y += (yTo-y)/25;

__view_set( e__VW.XView, 0, -(__view_get( e__VW.WView, 0 )/2) + x );
__view_set( e__VW.YView, 0, -(__view_get( e__VW.HView, 0 )/2) + y );


//view_xview = clamp(view_xview,0,room_width-view_wview);
//view_yview = clamp(view_yview,0,room_height-view_hview);

}
