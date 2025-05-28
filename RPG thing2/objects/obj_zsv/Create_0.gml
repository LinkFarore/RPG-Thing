
view_enabled[0] = true;
__view_set( e__VW.Visible, 0, true );

__view_set( e__VW.WView, 0, 240 );
__view_set( e__VW.HView, 0, 160 );
__view_set( e__VW.XPort, 0, 0 );//set position of port
__view_set( e__VW.YPort, 0, 0 );
__view_set( e__VW.WPort, 0, 240 );//set size of port
__view_set( e__VW.HPort, 0, 160 );






view_x = __view_get( e__VW.XView, 0 );
view_y = __view_get( e__VW.YView, 0 );
view_x1 = view_x;
view_y1 = view_y;
view_xspeed = 16; // x movement speed of view
view_yspeed = 8; // y movement speed of view

