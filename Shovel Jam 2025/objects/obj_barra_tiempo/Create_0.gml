/// @description 

x = room_width/2;

tiempo_max = 20 * 60; // segundos * frames/s
tiempo = 0;

alarm[0] = 1;



/// @description Detiene la cuenta atras
function Parar()
{
	alarm[0] = -1;
}


/// @description Cuando se acaba el tiempo muestra un mensaje
function Mostrar_you_failed()
{
	instance_create_layer(0,0,"textos",obj_youfailed);
}