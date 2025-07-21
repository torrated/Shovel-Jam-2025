/// @description arranca la helice poco a poco

if (tiempo_arranque < tiempo_arranque_maximo)
{
	tiempo_arranque += 1;
	image_speed = tiempo_arranque / tiempo_arranque_maximo;
	alarm[0] = 1;
	audio_sound_pitch(ruido_motor,image_speed);
	rpm = rpm_ralenti * tiempo_arranque / tiempo_arranque_maximo;
}
else
{
	arrancado = true;
	tiempo_arranque = 0;
	alarm[6] = 1;
}