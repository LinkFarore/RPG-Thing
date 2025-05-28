//if the mouse button is not clicked
if (!mouse_check_button(mb_left))
{
    grab = false;//slider is not clicked therefore not grabbed
}

if (grab = false)//if this object is not being grabbed
{
    exit;
}
else//otherwise change its coordinates
{
    //if we slide within the constraints, update the sliders coordinate
    if ((mouse_y + yy) < bottomLimit) && ((mouse_y + yy > topLimit))
    {
        y = mouse_y + yy;
    }
    else if ((mouse_y + yy) > bottomLimit)//set at bottom limit if user wants to slide it too far down
    {
        y = bottomLimit;
    }
    else if ((mouse_y + yy) < topLimit)//set at top limit if user wants to slide it too far up
    {
        y = topLimit;
    }
}

//work out the percentage value
percentage = round(((y-bottomLimit)/(topLimit-bottomLimit))*100);

