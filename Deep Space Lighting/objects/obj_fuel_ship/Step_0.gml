/// @description  Control the the states
event_inherited();

//Turning
var pd = dir;
var dd = angle_difference(direction, pd);
direction -= min(abs(dd),spd/2) * sign(dd);

if foe = noone
{
motion_add(direction,spd);
}

if speed > spd
{
    speed = spd;
}

if (state == "flee") {
    scr_fuel_ship_flee();
} else if (state == "patrol") {
    scr_fuel_ship_patrol();
}else if (state == "idle") {
    scr_fuel_ship_idle();
}

// Face the direction you are moving
image_angle = direction;

/// Check for death
if (hp <= 0) 
{
if !audio_is_playing(snd_explosion)
{
    audio_play_sound(snd_explosion,1,false);
}

instance_create(x,y,obj_explosion);
{
amount = irandom_range(15,30);

if (amount > 0)
{
    var division = 360 / amount;
    var rand = random(360);
    for (i = 0; i < amount; i++)
    {
        var coin = instance_create(x,y,obj_crystal4);
        with (coin)
        {
            direction = rand + division*other.i
        }
    }
}
}

instance_destroy();
}

