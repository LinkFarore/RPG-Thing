pause = 0;
selected = false;
finish = true;
shop = false;
audio_play_sound(snd_select2,0,false);
if instance_exists(obj_station)
{
obj_station.alarm[0] = 1;
}
if instance_exists(obj_planet)
{
obj_planet.alarm[0] = 1;
}
instance_activate_all();

if instance_exists(par_button)
{
    with(par_button)
    {
        instance_destroy();
    }
}

if instance_exists(obj_build_ship)
{
    with(obj_build_ship)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button)
{
    with(obj_button)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button_part)
{
    with(obj_button_part)
    {
        instance_destroy();
    }
}

/*if instance_exists(obj_button_2)
{
    with(obj_button_2)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button_3)
{
    with(obj_button_3)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button_health)
{
    with(obj_button_health)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button_energy)
{
    with(obj_button_energy)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button_fuel)
{
    with(obj_button_fuel)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button_next)
{
    with(obj_button_next)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button_prev)
{
    with(obj_button_prev)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button_missiles)
{
    with(obj_button_missiles)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button_bomb)
{
    with(obj_button_bomb)
    {
        instance_destroy();
    }
}

if instance_exists(obj_sell_scrap)
{
    with(obj_sell_scrap)
    {
        instance_destroy();
    }
}

if instance_exists(obj_buy_scrap)
{
    with(obj_buy_scrap)
    {
        instance_destroy();
    }
}

if instance_exists(obj_edit)
{
    with(obj_edit)
    {
        instance_destroy();
    }
}

if instance_exists(obj_button_land)
{
    with(obj_button_land)
    {
        instance_destroy();
    }
}*/

instance_destroy();