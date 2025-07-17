/// @description 

fase_actual = 1;
objetivos_por_fase = [];
RefrescarCondiciones();



/// @description Refresca los valores de las condiciones de victoria
function RefrescarCondiciones()
{
	objetivos_por_fase[1] = [obj_avion.arrancado];
	objetivos_por_fase[2] = [obj_avion.arrancado,
							 obj_avion.tiene_combustible];
}


/// @description Incrementa el número de fase actual
function IncrementaFase()
{
	fase_actual += 1;
}
