/// @description Cambia el color dependiendo de si las condiciones se cumplen

obj_juego.RefrescarCondiciones();
condiciones_cumplidas = true;
	
var _condiciones_fase_actual = obj_juego.objetivos_por_fase[obj_juego.fase_actual];
for (var _i = 0; _i < array_length(_condiciones_fase_actual); _i++)
{
	if !(_condiciones_fase_actual[_i])
		condiciones_cumplidas = false;
}