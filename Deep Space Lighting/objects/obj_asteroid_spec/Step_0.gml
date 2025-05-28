height = min(height + vsp, 0)
vsp += 0.14;
speed *= 0.95;


image_alpha -= .02;

if image_alpha <= 0
{
    instance_destroy();
}

