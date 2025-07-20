/// @description

LogoInicial();

avion_sentido = -1;
avion = noone;
avion_altura = 500;

/// @description Muestra el logo inicial
function LogoInicial()
{
	alarm[0] = 1;
	logo_presente = true;
	logo_tiempo_max = 4 * 60; // segundos * fps;
	logo_tiempo = 0;
	logo_alpha = 0;
	logo = instance_create_layer(room_width/2,room_height/2,layer,obj_logo);
	logo.image_alpha = 0;
}


/// @description Muestra el titulo en pantalla
function MuestraTitulo()
{
	titulo = instance_create_layer(0,0,"Titulo",obj_titulo);
	alarm[1] = 1;
}

function MuestraPressSpace()
{
	spacio = instance_create_layer(0,0,"space",obj_pressspace);
}
