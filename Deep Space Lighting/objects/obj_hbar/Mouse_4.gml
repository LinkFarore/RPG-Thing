//this enables us to click the bar to advance the slider
if (mouse_x > leftLimit) && (mouse_x < rightLimit)
{
    a.x = mouse_x;
	a.percentage = round(((x - leftLimit) / (rightLimit - leftLimit)) * 255);
}