//Draw test for exhaust particles
var custom_color = c_gray;

if instance_exists(obj_hbar_b_ex)
{
	var custom_color = make_color_rgb(global.temp_r_ex,global.temp_g_ex,global.temp_b_ex);
}

//Draw test for Hull
if instance_exists(obj_hbar_b_hl)
{
	var custom_color = make_color_rgb(global.temp_r_hl,global.temp_g_hl,global.temp_b_hl);
}

//Draw test for Lights
if instance_exists(obj_hbar_b_li)
{
	var custom_color = make_color_rgb(global.temp_r_li,global.temp_g_li,global.temp_b_li);
}

//Draw test for Lazer
if instance_exists(obj_hbar_b_lz)
{
	var custom_color = make_color_rgb(global.temp_r_lz,global.temp_g_lz,global.temp_b_lz);
}

//Draw test for Shield
if instance_exists(obj_hbar_b_sh)
{
	var custom_color = make_color_rgb(global.temp_r_sh,global.temp_g_sh,global.temp_b_sh);
}

if instance_exists(obj_button_color)
{
draw_set_color(custom_color);
draw_rectangle(800,228,864,292,false);
}