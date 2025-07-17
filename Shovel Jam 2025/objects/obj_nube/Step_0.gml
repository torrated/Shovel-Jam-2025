/// @description 

if (x < 0)
{
	instance_create_layer(room_width+sprite_width,y,layer,obj_nube);
	instance_destroy(self,true);
}
else
{
	if (instance_number(obj_nube) == 1)
	{
		var _nube = instance_create_layer(room_width+(sprite_width*image_xscale),y,layer,obj_nube);
		_nube.speed *= random_range(0.5,1.5);
		//y += random_range(-30,30);
	}
}