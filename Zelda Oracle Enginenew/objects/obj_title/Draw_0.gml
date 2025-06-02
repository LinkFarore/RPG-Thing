draw_sprite(spr_title,0,room_width/2,30);

draw_set_font(fnt_retro);
draw_set_color(c_black);
draw_set_halign(fa_center);


if gamepad_is_connected(0)
{
draw_text(room_width/2,room_height/4*3+8,string_hash_to_newline("Press Start!"));
}
else
{
draw_text(room_width/2,room_height/4*3+8,string_hash_to_newline("Press Space!"));
}

if keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_start)
{
room_goto_next();
}

