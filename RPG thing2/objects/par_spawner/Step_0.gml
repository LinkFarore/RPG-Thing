if instance_number(enemy_type) <= 2
{
    var spawnx;
    do
    {
        spawnx = random(room_width);
    }
    until((spawnx < __view_get( e__VW.XView, 0 )) || (spawnx > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )));

    instance_create(spawnx,room_height/2,enemy_type);
    enemy_count += 1;
}

if enemy_count >= enemy_max
{
    instance_destroy();
}

