/// @description Create the tree
image_index = 0;
image_speed = 0;
image_angle = random(360);

for (var i=1; i<5; i++)
{
    var leaves = instance_create(x,y,obj_tree_leaves);
    leaves.image_index = i;
    leaves.depth = -100*i;
    leaves.offset = 112/5*(5-i);
}