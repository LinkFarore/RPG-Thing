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
		case "Set \n Color":
		{	
			audio_play_sound(snd_select2,0,false);
			
			if instance_exists(obj_hbar_b_ex)
	        {scr_part_custom_exhaust_init();}
			
			if instance_exists(obj_hbar_b_hl)
	        {global.custom_hull = true;}
			
			if instance_exists(obj_hbar_b_li)
	        {global.custom_light = true;}
			
			if instance_exists(obj_hbar_b_lz)
	        {scr_part_custom_lazer_init();}
			
			if instance_exists(obj_hbar_b_sh)
	        {global.custom_shield = true;}
			break;
		}
		
		case "Exhaust \n Color":
		{
	        if instance_exists(obj_button_exit)
			{
				with(obj_button_exit)
				{
					instance_destroy();	
				}
			}
			
			if instance_exists(par_hbar)
			with (par_hbar)
			{instance_destroy();}

			if instance_exists(par_hslider)
			with (par_hslider)
			{instance_destroy();}
			
			audio_play_sound(snd_select,0,false);
			
			var exit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_back_part);
			exit_button.image_xscale = 2;
			exit_button.image_yscale = 2;

			var r_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-384,obj_hbar_r_ex);
			
			var g_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_hbar_g_ex);
			
			var b_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-256,obj_hbar_b_ex);
			
			var test_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-616,obj_button_color);
			test_button.image_xscale = 2;
			test_button.image_yscale = 2;
			test_button.type = "Set \n Color";
			break;
		}
		
		case "Lights \n Color":
		{
	        if instance_exists(obj_button_exit)
			{
				with(obj_button_exit)
				{
					instance_destroy();	
				}
			}
			
			if instance_exists(par_hbar)
			with (par_hbar)
			{instance_destroy();}

			if instance_exists(par_hslider)
			with (par_hslider)
			{instance_destroy();}
			
			audio_play_sound(snd_select,0,false);
			
			var exit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_back_part);
			exit_button.image_xscale = 2;
			exit_button.image_yscale = 2;

			var r_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-384,obj_hbar_r_li);
			
			var g_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_hbar_g_li);
			
			var b_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-256,obj_hbar_b_li);
			
			var test_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-616,obj_button_color);
			test_button.image_xscale = 2;
			test_button.image_yscale = 2;
			test_button.type = "Set \n Color";
			break;
		}
		
		case "Hull \n Color":
		{
	        if instance_exists(obj_button_exit)
			{
				with(obj_button_exit)
				{
					instance_destroy();	
				}
			}
			
			if instance_exists(par_hbar)
			with (par_hbar)
			{instance_destroy();}

			if instance_exists(par_hslider)
			with (par_hslider)
			{instance_destroy();}
			
			audio_play_sound(snd_select,0,false);
			
			var exit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_back_part);
			exit_button.image_xscale = 2;
			exit_button.image_yscale = 2;

			var r_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-384,obj_hbar_r_hl);
			
			var g_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_hbar_g_hl);
			
			var b_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-256,obj_hbar_b_hl);
			
			var test_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-616,obj_button_color);
			test_button.image_xscale = 2;
			test_button.image_yscale = 2;
			test_button.type = "Set \n Color";
			break;
		}
		
		case "Shield \n Color":
		{
	        if instance_exists(obj_button_exit)
			{
				with(obj_button_exit)
				{
					instance_destroy();	
				}
			}
			
			if instance_exists(par_hbar)
			with (par_hbar)
			{instance_destroy();}

			if instance_exists(par_hslider)
			with (par_hslider)
			{instance_destroy();}
			
			audio_play_sound(snd_select,0,false);
			
			var exit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_back_part);
			exit_button.image_xscale = 2;
			exit_button.image_yscale = 2;

			var r_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-384,obj_hbar_r_sh);
			
			var g_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_hbar_g_sh);
			
			var b_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-256,obj_hbar_b_sh);
			
			var test_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-616,obj_button_color);
			test_button.image_xscale = 2;
			test_button.image_yscale = 2;
			test_button.type = "Set \n Color";
			break;
		}
		
		case "Lazer \n Color":
		{
	        if instance_exists(obj_button_exit)
			{
				with(obj_button_exit)
				{
					instance_destroy();	
				}
			}
			
			if instance_exists(par_hbar)
			with (par_hbar)
			{instance_destroy();}

			if instance_exists(par_hslider)
			with (par_hslider)
			{instance_destroy();}
			
			audio_play_sound(snd_select,0,false);
			
			var exit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_back_part);
			exit_button.image_xscale = 2;
			exit_button.image_yscale = 2;

			var r_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-384,obj_hbar_r_lz);
			
			var g_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-320,obj_hbar_g_lz);
			
			var b_bar = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-256,obj_hbar_b_lz);
			
			var test_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-616,obj_button_color);
			test_button.image_xscale = 2;
			test_button.image_yscale = 2;
			test_button.type = "Set \n Color";
			break;
		}
		default: break;
	}
}