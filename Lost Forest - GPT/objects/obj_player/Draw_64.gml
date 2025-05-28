if (spell_menu)
{exit;}

//draw_sprite_tiled_ext(spr_fog,0,camera_get_view_x(0)*0.4,camera_get_view_y(0)*0.2-120,2,2,c_white,.3);

//Draw the spell slots left to right
draw_sprite(spr_inv_slot,0,240-16,320);
draw_sprite(spr_inv_slot,0,280-16,320);
draw_sprite(spr_inv_slot,0,320-16,320);
draw_sprite(spr_inv_slot,0,360-16,320);
draw_sprite(spr_inv_slot,0,400-16,320);

//Draw the key number left ot right
draw_set_color(c_white);
draw_set_font(fnt_buttons);
draw_text(240-8,320-24,"1");
draw_text(280-8,320-24,"2");
draw_text(320-8,320-24,"3");
draw_text(360-8,320-24,"4");
draw_text(400-8,320-24,"5");

//Draw the spell icons left to right
/*
draw_sprite(spr_spell_new,0,241-16,321);
draw_sprite(spr_spell_new,0,281-16,321);
draw_sprite(spr_spell_new,0,321-16,321);
draw_sprite(spr_spell_new,0,361-16,321);
draw_sprite(spr_spell_new,0,401-16,321);*/

for (var i = 0; i < 5; i++) {
	var xx = 225 + (i mod 5) * 40;
    var yy = 321 + (i div 5) * 40;
    if (spell_bar[i] != -1) 
	{
        draw_sprite(spr_spell_new, spell_bar[i], xx, yy);
    }
}