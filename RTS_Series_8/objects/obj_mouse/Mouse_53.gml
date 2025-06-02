// Set the press x and press y

px = mouse_x;
py = mouse_y;

if can_build && can_place
{
	instance_create(mouse_x,mouse_y,object_build);
	can_build = false;
}