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
        if (point_in_rectangle(mx, my, x - 6, y - 6, x - 6 + 12 + row_length * 36, y - 6 + 12 + (((INVENTORY_SLOTS - 1) div row_length) + 1) * 36)) 
		{
            for (var i = 0; i < INVENTORY_SLOTS; i += 1;) 
			{
                var xx = x + (i mod row_length) * 36 + 2;
                var yy = y + (i div row_length) * 36 + 2;
                if (point_in_rectangle(mx, my, xx, yy, xx + 64, yy + 64)) 
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