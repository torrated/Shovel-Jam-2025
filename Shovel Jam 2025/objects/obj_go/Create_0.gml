/// @description 

condiciones_cumplidas = false;

/// @description Comprueba si se dan las condiciones de final de fase
function ComprobarCondiciones()
{
	//obj_juego.RefrescarCondiciones();
	
	//var _condiciones_fase_actual = obj_juego.objetivos_por_fase[obj_juego.fase_actual];
	//for (var _i = 0; _i < array_length(_condiciones_fase_actual); _i++)
	//{
	//	if (_condiciones_fase_actual[_i])
	if (condiciones_cumplidas)
			obj_avion.Despegar()
	//	else
	//		show_message($"no se cumple la condicion {_i}");
	//}
}