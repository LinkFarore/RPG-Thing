if obj_player.x > view_x + __view_get( e__VW.WView, 0 ) view_x += __view_get( e__VW.WView, 0 );
if obj_player.x < view_x view_x -= __view_get( e__VW.WView, 0 );
if obj_player.y > view_y + __view_get( e__VW.HView, 0 ) view_y += __view_get( e__VW.HView, 0 );
if obj_player.y < view_y view_y -= __view_get( e__VW.HView, 0 );

if view_x1 < view_x view_x1 = min(view_x,view_x1 + view_xspeed);
if view_x1 > view_x view_x1 = max(view_x,view_x1 - view_xspeed);
if view_y1 < view_y view_y1 = min(view_y,view_y1 + view_yspeed);
if view_y1 > view_y view_y1 = max(view_y,view_y1 - view_yspeed);

__view_set( e__VW.XView, 0, view_x1 );
__view_set( e__VW.YView, 0, view_y1 );

