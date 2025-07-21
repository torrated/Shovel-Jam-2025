/// @description 

cogido = false;
y_inicial = y;
angulo_inicial = image_angle;
follow = noone;

tiempo_verter_maximo = 1.5* 60; // segundos * fps
tiempo_verter = 0;
angulo_maximo = 90;

altura_barril = 20;

sonido_gluglu = noone;


/// @description Coge o deja el barril dependiendo del estado actual
function Accionar()
{
	if (cogido)
		Dejar();
	else
		Coger();
}



/// @description Coge el barril
function Coger()
{
	y -= altura_barril;
	//image_angle = 10;
	obj_player.CambiarVelocidad(VELOCIDAD_PLAYER.LENTA);
	follow = obj_player;
	cogido = true;
	obj_player.Poner_Sprite_Cogiendo();
}



/// @description Deja el barril
function Dejar()
{
	y = y_inicial;
	image_angle = angulo_inicial;
	obj_player.CambiarVelocidad(VELOCIDAD_PLAYER.NORMAL);
	follow = noone;
	cogido = false;
	obj_player.Poner_Sprite_Normal();
}


/// @description Vierte el combustible en el avión
function Verter()
{
	obj_player.Detener();
	alarm[0] = 1;
	sonido_gluglu = audio_play_sound(snd_gluglu,1,true);
}


/// @description Tira el barril al suelo cuando está usado
function Tirar()
{
	y = y_inicial;
	image_angle = 90 * image_xscale;
	cogido = false;
	audio_stop_sound(sonido_gluglu);
	audio_play_sound(snd_plof,1,false);
}