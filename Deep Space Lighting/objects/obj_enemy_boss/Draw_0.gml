draw_self();

draw_set_alpha(1);

if (hit)
{
draw_healthbar_circular(x,y,sprite_width+4,90,hp,spr_healthbar);
}

if obj_player.target = id
{
draw_circle_colour(x,y,sprite_width/2+4,c_red,c_red,true)//Outer Circle
draw_circle_colour(x,y,sprite_width/2-4,c_red,c_red,true)//Inner Circle
draw_line_colour(x-sprite_width/2-4,y,x+sprite_width/2+4,y,c_red,c_red)//horizontal
draw_line_colour(x,y-sprite_width/2-4,x,y+sprite_width/2+4,c_red,c_red)//vertical
//draw_set_alpha(.2);
//draw_set_alpha(1);
}

if (shield)
{
    draw_set_alpha(0.2);
    draw_circle_colour(x,y,sprite_width,c_white,c_maroon,false);
    draw_set_alpha(1);
}

