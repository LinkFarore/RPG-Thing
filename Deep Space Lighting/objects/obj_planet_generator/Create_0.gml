globalvar chunkLoop, playerPlanetPos, planetWidth, planetHeight;
chunkLoop = false;
planetWidth= 1000;
planetHeight = 1000;
playerPlanetPos = 0;
instance_create(0,0,obj_planet_test_object);
var mouse = instance_create(mouse_x,mouse_y,obj_mouse);
mouse.image_xscale = .25;
mouse.image_yscale = .25;

tree_amount = 0;
tree_max = irandom_range(15, 30);

for(tree_amount = 0; tree_amount < tree_max; tree_amount += 1;)
{
	var tree_x, tree_y;
	
	tree_x = irandom(planetWidth);
	tree_y = irandom(planetHeight);
	
	if !place_meeting(tree_x,tree_y,obj_tree)
	{
		instance_create(tree_x, tree_y, obj_tree);
	}
}