/// @description Sigue al player cuando lo ha cogido

if (follow <> noone)
{
	x = follow.x;
	image_xscale = -follow.image_xscale;
	if (image_xscale > 1)
		x += (sprite_width/2);
	else
		x -= (sprite_width/2);
	//image_angle = 10 * image_xscale;
}