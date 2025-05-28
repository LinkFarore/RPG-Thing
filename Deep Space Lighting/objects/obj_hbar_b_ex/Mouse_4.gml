//this enables us to click the bar to advance the slider
if (mouse_x > leftLimit) && (mouse_x < rightLimit)
{
	if instance_exists(a)
	{
		with(a)
		{
			x = mouse_x;
			value = round(((x - leftLimit) / (rightLimit - leftLimit)) * 255);
			global.temp_b_ex = value;
		}
	}
}