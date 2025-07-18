/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (instance_exists(obj_avion))
	if (obj_avion.tiene_combustible)
		image_angle = angulo_lleno;
	else
		image_angle = angulo_vacio-obj_avion.porcentaje_combustible;