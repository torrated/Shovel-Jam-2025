/// @description 

if (instance_exists(obj_avion))
	if (obj_avion.tiene_combustible)
		image_angle = angulo_lleno;
	else
		image_angle = angulo_vacio+((obj_avion.porcentaje_combustible/100)*angulo_lleno*2);