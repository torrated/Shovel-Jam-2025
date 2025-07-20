/// @description sigue al objeto


if (instance_exists(seguir))
{
	size = seguir.bbox_right-seguir.bbox_left;
	image_xscale = size//*2/3;
	
	x = seguir.bbox_left;

	y = seguir.y;
}
else
	instance_destroy(self,true);