/// @description sigue al objeto

if (instance_exists(seguir))
{
	image_xscale = seguir.sprite_width/2;
	x = seguir.x - (image_xscale/2);
	y = seguir.y;
}
else
	instance_destroy(self,true);