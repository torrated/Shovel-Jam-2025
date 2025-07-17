/// @description 

cogido = false;
y_inicial = y;
angulo_inicial = image_angle;
follow = noone;


/// @description Coge el barril
function Coger()
{
	y -= 30;
	image_angle = 10;
	obj_player.CambiarVelocidad(VELOCIDAD_PLAYER.LENTA);
	follow = obj_player;
	cogido = true;
}



/// @description Deja el barril
function Dejar()
{
	y = y_inicial;
	image_angle = angulo_inicial;
	obj_player.CambiarVelocidad(VELOCIDAD_PLAYER.NORMAL);
	follow = noone;
	cogido = false;
}