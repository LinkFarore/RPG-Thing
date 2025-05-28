/// @description Draw the players stats.

depth = -100;

var viewh = 355;

if (instance_exists(obj_player))
{
    //Set the font.
    draw_set_font(fnt_ravenna);
    
    //Draw the level.
    draw_text_colour(8,viewh-52, string_hash_to_newline("Level: "+string(global.level)),c_white,c_white,c_white,c_white,1);
    
    //Draw the health.
    if (global.hp > 0)
    {
    draw_rectangle_colour(8,viewh-28,8+(global.hp*100/global.maxhp),viewh-16,c_maroon,c_maroon,c_red,c_red,false);
    }
    draw_rectangle_colour(8,viewh-28,108,viewh-16,c_white,c_white,c_white,c_white,true);
    
    //Draw the mana.
    if (global.mana > 0)
    {
    draw_rectangle_colour(8,viewh-12,8+(global.mana*100/global.maxmana),viewh-4,c_navy,c_navy,c_blue,c_blue,false);
    }
    draw_rectangle_colour(8,viewh-12,108,viewh-4,c_white,c_white,c_white,c_white,true);
}

