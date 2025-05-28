dir = point_direction(x,y,mouse_x,mouse_y);
motion_set(dir,8);
image_angle = direction;
hp = 3;
audio_play_sound(snd_lazer,0,false);

image_speed = random_range(.05,0.1);

if global.custom_lazer
{
	draw_color = make_color_rgb(global.temp_r_lz,global.temp_g_lz,global.temp_b_lz);
}
else
{
	draw_color = c_blue;	
}