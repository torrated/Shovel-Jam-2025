/// @description a game by logo

if (logo_tiempo < logo_tiempo_max)
{
	logo_tiempo += 1;
	if (logo_tiempo < (logo_tiempo_max/2))
		logo.image_alpha = logo_tiempo/(logo_tiempo_max/2);
	else
		logo.image_alpha -= 1/(logo_tiempo_max/2);
	alarm[0] = 1;
}
else
{
	logo_presente = false;
	instance_destroy(logo,false);
	MuestraTitulo();
	MuestraPressSpace();
}