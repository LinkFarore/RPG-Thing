image_speed = 0;

if !(place_snapped(32,32))
{
move_snap(32,32);
}

if !audio_is_playing(snd_place)
{
audio_play_sound(snd_place,0,false);
}

hp = 10;

direction = 0;