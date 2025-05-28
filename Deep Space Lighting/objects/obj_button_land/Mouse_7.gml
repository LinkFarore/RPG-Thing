//Land on the planet
instance_activate_all();
planet_color = make_colour_rgb(obj_player.target.r,obj_player.target.g,obj_player.target.b);
pause = 0;
selected = false;
shop = false;

scr_save();
var cx = obj_player.current_chunk_x;
var cy = obj_player.current_chunk_y;
scr_save_chunk(cx, cy);

room_goto(rm_planet);


/*if !instance_exists(obj_player)
{
    instance_activate_object(obj_player);
    if !room_exists(string(obj_player.target.id))
    {
        string(obj_player.target.id) = room_add();
    }
    instance_deactivate_object(obj_player);
}

global.planet_room = room_add();
room_set_width(global.myroom, 640);
room_set_height(global.myroom, 480);
room_set_persistent(global.myroom, false);*/

/* */
/*  */
