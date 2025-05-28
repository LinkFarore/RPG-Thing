/// @description Draw the leaves.
var xview = __view_get( e__VW.XView, view_current );
var yview = __view_get( e__VW.YView, view_current );
var wview = __view_get( e__VW.WView, view_current )/2;
var hview = __view_get( e__VW.HView, view_current )/2;
dis = point_distance(xview+wview,yview+hview,x,y);

//Make sure we are in the room before we do anything.
//480 isn't exact but it will work.
//if (dis > 480) exit;

//Call this after the distance check just to optimize a bit.
dir = point_direction(xview+wview,yview+hview,x,y);
var calc = (dis/4)*(((offset*-1)/112)+1);
var xdis = lengthdir_x(calc,dir);
var ydis = lengthdir_y(calc,dir);

//Draw the shadow
var shadow_calc = offset/120/20;
var shadow_offset = (((offset*-1)/112)+1)*80;
draw_sprite_ext(sprite_index,image_index,x+(offset/8),y+(offset/8),1,1,image_angle,c_black,shadow_calc+.1);
draw_sprite_ext(sprite_index,image_index,x+shadow_offset,y+shadow_offset,1,1,image_angle,c_black,shadow_calc+.025);

//Draw the leaves
draw_sprite_ext(sprite_index,image_index,x+xdis,y+ydis,1,1,image_angle,image_blend,1);

