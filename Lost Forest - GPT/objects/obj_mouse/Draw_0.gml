depth = -10000;

if spell_menu = false
{exit;}

if (item_drag != -1) {
    draw_set_alpha(0.65);
    draw_sprite_ext(spr_spell_new, item_drag, mouse_x-14, mouse_y-14,2,2,0,c_white,0.65);
    draw_set_alpha(1);
}