if place_meeting(x,y+9,obj_link)
{
if obj_link.focus = false
{
    if keyboard_check_pressed(vk_enter) && open = false
    {
    image_index = 1;
    instance_create(x,y+9,object)
    open = true;
    }
}
else
{
//do nothing
}
}

