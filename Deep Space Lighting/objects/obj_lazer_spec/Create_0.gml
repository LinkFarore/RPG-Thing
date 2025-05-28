dir = point_direction(x,y,mouse_x,mouse_y);
spd = random_range(4.5,6);
motion_set(dir,spd);
image_angle = direction;
audio_play_sound(snd_lazer,0,false);

if global.custom_lazer
{
	draw_color = make_color_rgb(global.temp_r_lz,global.temp_g_lz,global.temp_b_lz);
}
else
{
	draw_color = c_blue;	
}