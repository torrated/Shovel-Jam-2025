/// @description 

fase_actual = 1;
objetivos_por_fase = [];
RefrescarCondiciones();

version = "v0.1";

audio_group_load(audiogroup_default);
audio_group_set_gain(audiogroup_default,0.06,1);
musica = audio_play_sound(snd_theme,1,true);


/// @description Refresca los valores de las condiciones de victoria
function RefrescarCondiciones()
{
	objetivos_por_fase[1] = [obj_avion.arrancado];
	objetivos_por_fase[2] = [obj_avion.arrancado,
							 obj_avion.tiene_combustible];
	objetivos_por_fase[3] = [obj_avion.arrancado,
							 obj_avion.tiene_combustible,
							 obj_avion.alarma_apagada]
}


/// @description Incrementa el número de fase actual
function IncrementaFase()
{
	fase_actual += 1;
}
