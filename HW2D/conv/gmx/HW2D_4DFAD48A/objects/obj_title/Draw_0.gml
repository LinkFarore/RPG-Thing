draw_sprite(spr_title,0,0,0);

draw_set_font(fnt_retro);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(room_width/2,room_height/4*3+8,string_hash_to_newline("Press Space!"));


if keyboard_check_released(vk_space)
{
room_goto_next();
}

