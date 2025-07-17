/// @description detiene la helice poco a poco

if (tiempo_arranque < tiempo_arranque_maximo)
{
	tiempo_arranque += 1;
	image_speed = (tiempo_arranque_maximo-tiempo_arranque) / tiempo_arranque_maximo;
	alarm[1] = 1;
	audio_sound_pitch(ruido_motor,image_speed);
}
else
{
	arrancado = false;
	tiempo_arranque = 0;
}