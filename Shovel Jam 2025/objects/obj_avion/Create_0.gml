/// @description 

image_speed = 0;

puede_arrancar = true;
arrancado = false;
despegando = false;

tiempo_arranque_maximo = 3 * 60; //segundos * fps;
tiempo_arranque = 0;

ruido_motor = noone; // instancia con el ruido del motor

tiempo_horizontal_maximo = 1.3 * 60; //segundos * fps
tiempo_horizontal = 0;

velocidad_horizontal = 3; // velocidad a la que se mueve el avion por cubierta
velocidad_vertical = 1.5; // velocidad de despegue
airborne = false;

tiempo_motor_fadeout_maximo = 1 * 60; // segundos * fps
tiempo_motor_fadeout = 0;

tiene_combustible = true;
porcentaje_combustible = 100;

rpm_maximo = 100; // velocidad del motor
rpm_ralenti = 50;
rpm = 0;

alarma_apagada = true;

/// @description Arranca o para el motor del avion
function Arrancar()
{
	if (puede_arrancar && !arrancado)
	{
		alarm[0] = 1;
		ruido_motor = audio_play_sound(snd_motor,1,true);
		audio_group_set_gain(audiogroup1,1,tiempo_arranque_maximo*1000/60);
	}
	if (arrancado)
	{
		alarm[1] = 1;
	}
}



/// @description Para el tiempo y hace despegar al avion.
/// modo = 0: despega correctamente
function Despegar(modo = 0)
{
	obj_barra_tiempo.Parar();
	instance_destroy(obj_helice,false);
	instance_destroy(obj_go,false);
	//instance_destroy(obj_combustible,true);
	instance_destroy(obj_puerta_accion,true);
	despegando = true;
	
	switch(modo)
	{
		case(0):	PonerHorizontal(); MoverHastaBorda(); break;
	}
}



/// @description Pone el avion en horizontal
function PonerHorizontal()
{
	alarm[3] = 1;
}



/// @description Mueve el avion hasta la borda
function MoverHastaBorda()
{
	alarm[4] = 1;
}


///@description Cambia el estado del indicardor de combustible
/// @param {bool} estado
function TieneCombustible(estado)
{
	tiene_combustible = estado;
	if (estado)
		porcentaje_combustible = 100;
	else
		porcentaje_combustible = 0;
}


/// @description Cambia el estado de arranque dependiendo del parametro
/// @param {bool}	estado
function PuedeArrancar(estado)
{
	puede_arrancar = estado;
	if !(estado)
		rpm = 0;
}


/// @description Incrementa el porcentaje de combustible del avion
/// @param {real} numero
function IncrementaCombustible(numero)
{
	porcentaje_combustible += numero;
}



/// @description Incrementa los rpm
/// @param {real} numero
function IncrementaRPM(numero)
{
	rpm += numero;
}



/// @description Cambia el estado de la alarma
/// @param {bool} estado
function CambiarAlarmaApagada(estado)
{
	alarma_apagada = estado;
}