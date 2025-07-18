/// @description sigue al avion

if (instance_exists(obj_avion))
{
	x = obj_avion.x;
	y = obj_avion.y;
	image_angle = obj_avion.image_angle;
}
else
	instance_destroy(self, true);