crystals += obj_death_item.crystal_temp;
scrap += obj_death_item.scrap_temp;
audio_play_sound(snd_pickup,1,false);
with(other)
{
    instance_destroy();
}

