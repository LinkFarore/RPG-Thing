draw_self();

if stun = true
{
    image_blend = c_blue;
}

if hurt = true
{
    image_blend = c_red;
}

if !(hurt) && (!stun)
{
    image_blend = c_white;
}