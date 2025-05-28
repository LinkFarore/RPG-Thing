/// @description Control the button
if (point_in_rectangle(mouse_x,mouse_y, x-width/2, y-height/2, x+width/2, y+height/2))
{
    image_alpha = 0.5;
}
else
{
    image_alpha = .25;
}

