hp -= 1;

weapon = obj_enemy_lazer2;

if (instance_exists(par_player)) 
{
    foe = instance_nearest(x, y, par_player)
} else {
    foe = -1;
}   

with(other)
{
instance_destroy();
audio_play_sound(snd_hit,1,false);
}