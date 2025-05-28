/// @description Position view based on player
var xTo, yTo;

if (instance_exists(obj_player))
{
    xTo = (obj_player.x div __view_get( e__VW.WView, 0 )) * __view_get( e__VW.WView, 0 );
    yTo = (obj_player.y div __view_get( e__VW.HView, 0 )) * __view_get( e__VW.HView, 0 );
    
    var difX, difY;
    difX = (xTo - x);
    difY = (yTo - y);
    
    if (abs(difX) < 1) x = xTo; else x+= difX/15;
    if (abs(difY) < 1) y = yTo; else y+= difY/15;
}

__view_set( e__VW.XView, 0, x );
__view_set( e__VW.YView, 0, y );

