/// @description Avion volando en la pantalla de titulo

if (instance_number(obj_avion) == 0)
{
	avion = instance_create_layer(room_width,avion_altura,"Instances",obj_avion);
		
	avion.image_xscale = -avion_sentido;
	avion.image_speed = 1;
	avion.PonerHorizontal();
	avion.velocidad_horizontal *= 1.1;
}
else
{
	avion.x += avion_sentido * avion.velocidad_horizontal;
	if ((avion.bbox_left < 0 && avion.bbox_right < 0) || (avion.bbox_left > room_width && avion.bbox_right > room_width))
		instance_destroy(avion,false)
}
alarm[1] = 1;