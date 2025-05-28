event_inherited();

if place_meeting(x,y,obj_mouse)
{
	image_index = 1;
	var push;
	push = max(mouse_check_button_pressed(mb_left),keyboard_check_pressed(vk_space),gamepad_button_check_pressed(0,gp_face1),0);
}
else
{
	image_index = 0;
	push = 0;
}


if (push == 1)
{		
	switch (type)
	{
		case "Hull":
		{   
			if instance_exists(obj_button_exit)
			{
				with(obj_button_exit)
				{
					instance_destroy();	
				}
			}
			
			var exit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_back_part);
			exit_button.image_xscale = 2;
			exit_button.image_yscale = 2;
			
			
			
			var hull_button_0 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/6,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-360,obj_button_part);
			hull_button_0.part_type = "hull_button";
			hull_button_0.image_xscale = 2;
			hull_button_0.image_yscale = 2;
			hull_button_0.hull_type = 0;
			
			var hull_button_1 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/6,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-260,obj_button_part);
			hull_button_1.part_type = "hull_button";
			hull_button_1.image_xscale = 2;
			hull_button_1.image_yscale = 2;
			hull_button_1.hull_type = 1;
			
			var hull_button_2 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/6,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			hull_button_2.part_type = "hull_button";
			hull_button_2.image_xscale = 2;
			hull_button_2.image_yscale = 2;
			hull_button_2.hull_type = 2;
			

			var hull_button_3 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-360,obj_button_part);
			hull_button_3.part_type = "hull_button";
			hull_button_3.image_xscale = 2;
			hull_button_3.image_yscale = 2;
			hull_button_3.hull_type = 3;

			var hull_button_4 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-260,obj_button_part);
			hull_button_4.part_type = "hull_button";
			hull_button_4.image_xscale = 2;
			hull_button_4.image_yscale = 2;
			hull_button_4.hull_type = 4;
			
			var hull_button_5 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			hull_button_5.part_type = "hull_button";
			hull_button_5.image_xscale = 2;
			hull_button_5.image_yscale = 2;
			hull_button_5.hull_type = 5;
			
			
			var hull_button_6 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-360,obj_button_part);
			hull_button_6.part_type = "hull_button";
			hull_button_6.image_xscale = 2;
			hull_button_6.image_yscale = 2;
			hull_button_6.hull_type = 6;

			var hull_button_7 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-260,obj_button_part);
			hull_button_7.part_type = "hull_button";
			hull_button_7.image_xscale = 2;
			hull_button_7.image_yscale = 2;
			hull_button_7.hull_type = 7;
			
			var hull_button_8 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			hull_button_8.part_type = "hull_button";
			hull_button_8.image_xscale = 2;
			hull_button_8.image_yscale = 2;
			hull_button_8.hull_type = 8;
			
			
			var hull_button_9 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+(213),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-360,obj_button_part);
			hull_button_9.part_type = "hull_button";
			hull_button_9.image_xscale = 2;
			hull_button_9.image_yscale = 2;
			hull_button_9.hull_type = 9;

			var hull_button_10 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+(213),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-260,obj_button_part);
			hull_button_10.part_type = "hull_button";
			hull_button_10.image_xscale = 2;
			hull_button_10.image_yscale = 2;
			hull_button_10.hull_type = 10;
			
			var hull_button_11 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+(213),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			hull_button_11.part_type = "hull_button";
			hull_button_11.image_xscale = 2;
			hull_button_11.image_yscale = 2;
			hull_button_11.hull_type = 11;
			
			
			var hull_button_12 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+(426),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-360,obj_button_part);
			hull_button_12.part_type = "hull_button";
			hull_button_12.image_xscale = 2;
			hull_button_12.image_yscale = 2;
			hull_button_12.hull_type = 12;

			var hull_button_13 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+(426),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-260,obj_button_part);
			hull_button_13.part_type = "hull_button";
			hull_button_13.image_xscale = 2;
			hull_button_13.image_yscale = 2;
			hull_button_13.hull_type = 13;
			
			var hull_button_14 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+(426),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			hull_button_14.part_type = "hull_button";
			hull_button_14.image_xscale = 2;
			hull_button_14.image_yscale = 2;
			hull_button_14.hull_type = 14;
			
		    break;
		}
		case "Engine":
		{
	        if instance_exists(obj_button_exit)
			{
				with(obj_button_exit)
				{
					instance_destroy();	
				}
			}
			
			var exit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_back_part);
			exit_button.image_xscale = 2;
			exit_button.image_yscale = 2;

			var engine_button_0 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_button_part);
			engine_button_0.part_type = "engine_button";
			engine_button_0.image_xscale = 2;
			engine_button_0.image_yscale = 2;
			engine_button_0.engine_type = 0;

			var engine_button_1 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_button_part);
			engine_button_1.part_type = "engine_button";
			engine_button_1.image_xscale = 2;
			engine_button_1.image_yscale = 2;
			engine_button_1.engine_type = 1;

			var engine_button_2 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3+(426),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_button_part);
			engine_button_2.part_type = "engine_button";
			engine_button_2.image_xscale = 2;
			engine_button_2.image_yscale = 2;
			engine_button_2.engine_type = 2;
			
			var engine_button_3 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			engine_button_3.part_type = "engine_button";
			engine_button_3.image_xscale = 2;
			engine_button_3.image_yscale = 2;
			engine_button_3.engine_type = 3;

			var engine_button_4 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			engine_button_4.part_type = "engine_button";
			engine_button_4.image_xscale = 2;
			engine_button_4.image_yscale = 2;
			engine_button_4.engine_type = 4;

			var engine_button_5 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3+(426),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			engine_button_5.part_type = "engine_button";
			engine_button_5.image_xscale = 2;
			engine_button_5.image_yscale = 2;
			engine_button_5.engine_type = 5;
		    break;
		}
		case "Weapon":
		{
	        if instance_exists(obj_button_exit)
			{
				with(obj_button_exit)
				{
					instance_destroy();	
				}
			}
			
			var exit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_back_part);
			exit_button.image_xscale = 2;
			exit_button.image_yscale = 2;

			var weapon_button_0 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_button_part);
			weapon_button_0.part_type = "weapon_button";
			weapon_button_0.image_xscale = 2;
			weapon_button_0.image_yscale = 2;
			weapon_button_0.weapon_type = 0;

			var weapon_button_1 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_button_part);
			weapon_button_1.part_type = "weapon_button";
			weapon_button_1.image_xscale = 2;
			weapon_button_1.image_yscale = 2;
			weapon_button_1.weapon_type = 1;

			var weapon_button_2 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3+(426),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_button_part);
			weapon_button_2.part_type = "weapon_button";
			weapon_button_2.image_xscale = 2;
			weapon_button_2.image_yscale = 2;
			weapon_button_2.weapon_type = 2;
			
			var weapon_button_3 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			weapon_button_3.part_type = "weapon_button";
			weapon_button_3.image_xscale = 2;
			weapon_button_3.image_yscale = 2;
			weapon_button_3.weapon_type = 3;

			var weapon_button_4 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			weapon_button_4.part_type = "weapon_button";
			weapon_button_4.image_xscale = 2;
			weapon_button_4.image_yscale = 2;
			weapon_button_4.weapon_type = 4;

			var weapon_button_5 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3+(426),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_part);
			weapon_button_5.part_type = "weapon_button";
			weapon_button_5.image_xscale = 2;
			weapon_button_5.image_yscale = 2;
			weapon_button_5.weapon_type = 5;
		    break;
		}
		case "Color":
		{
	        if instance_exists(obj_button_exit)
			{
				with(obj_button_exit)
				{
					instance_destroy();	
				}
			}
			
			var exit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_back_part);
			exit_button.image_xscale = 2;
			exit_button.image_yscale = 2;
			
			var exhaust_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/6,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_color);
			exhaust_button.type = "Exhaust \n Color";
			exhaust_button.image_xscale = 2;
			exhaust_button.image_yscale = 2;
			
			var light_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_color);
			light_button.type = "Lights \n Color";
			light_button.image_xscale = 2;
			light_button.image_yscale = 2;
			
			var hull_button_8 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_color);
			hull_button_8.type = "Hull \n Color";
			hull_button_8.image_xscale = 2;
			hull_button_8.image_yscale = 2;
			
			var hull_button_11 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+(213),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_color);
			hull_button_11.type = "Shield \n Color";
			hull_button_11.image_xscale = 2;
			hull_button_11.image_yscale = 2;
			
			var hull_button_14 = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+(426),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button_color);
			hull_button_14.type = "Lazer \n Color";
			hull_button_14.image_xscale = 2;
			hull_button_14.image_yscale = 2;
			
		    break;
		}
		
		default: break;
	}
}