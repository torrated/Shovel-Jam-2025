/// @description Poner el avion en horizontal

if (tiempo_horizontal < tiempo_horizontal_maximo)
{
	tiempo_horizontal += 1;
	image_angle += 0.1;
	//x -= velocidad_horizontal;
	alarm[3] = 1;
}