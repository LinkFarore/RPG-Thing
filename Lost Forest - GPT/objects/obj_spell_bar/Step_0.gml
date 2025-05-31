// Get mouse coordinates
var mx = mouse_x;
var my = mouse_y;

var sb_id = id;

if instance_exists(obj_mouse)
{
	obj_mouse.sbid = id;
}


if keyboard_check(ord("1"))
{
	with (obj_inventory) 
	{
		
		var d_xx = x + (i mod row_length) * icon_size;
		var d_yy = y - icon_size + (i div row_length) * icon_size;
				
        if (point_in_rectangle(mx, my, d_xx, d_yy-35, d_xx + icon_size, d_yy +35)) //(point_in_rectangle(mx, my, x - 6, y - 6, x - 6 + 12 + row_length * 36, y - 6 + 12 + (((INVENTORY_SLOTS - 1) div row_length) + 1) * 36)) 
		{
            for (var i = 0; i < INVENTORY_SLOTS; i += 1;) 
			{
                var xx = x + (i mod row_length) * 36 + 2;
                var yy = y + (i div row_length) * 36 + 2;
				
				var d_xx = x + (i mod row_length) * icon_size;
				var d_yy = y - icon_size + (i div row_length) * icon_size;
				
                if (point_in_rectangle(mx, my, d_xx, d_yy-27, d_xx + icon_size, d_yy +35)) //current working code  (point_in_rectangle(mx, my, xx, yy, xx + 64, yy + 64))
				
				//draw_rectangle_color(d_xx, d_yy-27, d_xx + icon_size, d_yy + 35,c_aqua,c_yellow,c_red,c_green,false);
				//
				{
					with sb_id
					{
                    spell_bar_temp[0] = i;
					}
                }
            }
        }
    }
}