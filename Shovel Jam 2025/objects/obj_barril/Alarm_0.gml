/// @description Vierte el combustible

if (tiempo_verter < tiempo_verter_maximo)
{
	tiempo_verter += 1;
	image_angle += image_xscale;
	y -= 0.5;
	obj_avion.IncrementaCombustible(100/tiempo_verter_maximo);
	alarm[0] = 1;
}
else
{
	Tirar();
	obj_player.Reanimar();
	obj_avion.TieneCombustible(true);
	obj_avion.PuedeArrancar(true);
}