//if still colliding with player, teleport them to the nearest black hole
if place_meeting(x,y,obj_player)
{
	
	var inst = pair;
	
    with (obj_player)
    {
        x = inst.x;
        y = inst.y;
        warp = true;
        audio_play_sound(snd_warp,0,false);
    }
}