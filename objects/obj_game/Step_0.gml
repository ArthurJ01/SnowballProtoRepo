spawn_click = keyboard_check_pressed(vk_space);

if (spawn_click and spawns = 1)
	{
		spawn_x2 = mouse_x;
		spawn_y2 = mouse_y;
		spawn = true;
		instance_create_layer(spawn_x2, spawn_y2, "Instances", obj_ball)
			with(obj_ball)
				{
					phy_active = false	
					ball2 = instance_id
				}
	}


if (spawn_click and spawns = 0)
	{
		
		spawn_x1 = mouse_x;
		spawn_y1 = mouse_y;
		spawns = 1;
		instance_create_layer(spawn_x1, spawn_y1, "Instances", obj_ball)
				with(obj_ball)
				{
					phy_active = false
					ball1 = instance_id
				}
		
		
				
	}


	
if (spawn)
{
	with(obj_ball)
			{
				phy_active = true
			}
	spawn = false;
	spawns = 0;
	obj_goal.start = true;
}

//if (ball1.stopped and ball2.stopped)
//{
//		instance_create_layer(spawn_x1, spawn_y1, "Instances", obj_ball)
//}


