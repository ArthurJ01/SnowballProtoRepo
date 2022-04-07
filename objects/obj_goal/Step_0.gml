
if (start)
{	
	ball1 = instance_nearest (x,y, obj_ball)
	ball2 = instance_furthest (x,y, obj_ball)
	start = false;
	check_nearest = true; 
}


if(check_nearest)
{
	if (instance_exists(ball1) and instance_nearest (x,y, obj_ball) = ball1)
	{	
		ball1.image_index = 1;
	}
	else
	{
		ball1.image_index = 0;	
	}
	
	if (instance_exists(ball2) and instance_nearest (x,y, obj_ball) = ball2)
	{
		ball2.image_index = 1;
	}
	else
	{
		ball2.image_index = 0;	
	}
}