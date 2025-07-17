/// @description 

x = room_width/2;

tiempo_max = 30 * 60; // segundos * frames/s
tiempo = 0;

alarm[0] = 1;



/// @description Detiene la cuenta atras
function Parar()
{
	alarm[0] = -1;
}