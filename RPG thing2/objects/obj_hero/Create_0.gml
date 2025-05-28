/// @description Initialize the player
target_x = x;
target_y = y;
moving = false;
grid = 8;
spd = 1;

saving = false;

image_speed = 0;
encounter = false;

display_set_gui_size(480,270);

audio_play_sound(snd_forest,0,true);

if load
{
	scr_load_game();	
}