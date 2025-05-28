// Set up so player is teleported to a random location, create a white hole at players nerw location
//things to do, add a delay, make camera teleport so it doesn't jump, add camera animation?

do 
{
var tele_x = (choose(-1,1))*(irandom(20000));
var tele_y = (choose(-1,1))*(irandom(20000));
}
until place_free(tele_x,tele_y);


with (other)
{
	x += tele_x;
	y += tele_y;
	warp = true;
	audio_play_sound(snd_blackhole_warp,1,false);
}

if instance_exists(obj_camera)
{
	obj_camera.x += tele_x;
	obj_camera.y += tele_y;
}