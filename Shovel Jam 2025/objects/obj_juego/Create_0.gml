/// @description 

fase_actual = 1;
objetivos_por_fase = [];
RefrescarCondiciones();

version = "v0.1";



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
