if a < 1
{
    a += .02;
}

if aa <= 0.3
{
    aat = 1;
}

if aa >= 1
{
    aat = 0;
}

if aa > aat
{
    aa -= 0.02;
}

if aa < aat
{
    aa += 0.02;
}

if keyboard_check_pressed(vk_space)
{
    a = 1;
    instance_create(room_width/3+52,room_height/3+room_height/4,obj_menu);
    cont = true;
}

if gamepad_is_connected(0) && gamepad_button_check_pressed(0,gp_start)
{
    a = 1;
    instance_create(room_width/3+52,room_height/3+room_height/4,obj_menu);
    cont = true;
}

if keyboard_check(vk_space)
{
    if !sound_isplaying(snd_select2)
    {
        sound_play(snd_select2);
    }
}

if instance_number(obj_planet_dummy) < 1 && alarm[0] = -1
{
    alarm[0] = irandom_range(60,180);
}

if instance_number(obj_planet_dummy) < 6 && alarm[1] = -1
{
    alarm[1] = irandom_range(60,180);
}

