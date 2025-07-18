/// @description
var _color = draw_get_color();
draw_set_color(c_black);

with (obj_player)
{
	//draw_text(x,y,$"x:{x}");
}

with (obj_barra_tiempo)
{
	//draw_text(x,y,$"xscale: {image_xscale}")
}

with (obj_avion)
{
	draw_text(0,150,$"puede_arrancar:{puede_arrancar}\narrancado:{arrancado}\ntiene_combustible:{tiene_combustible}\n% combustible:{porcentaje_combustible}");
}

with (obj_juego)
{
	draw_text(0,100,$"Fase {fase_actual}")
}

with (obj_go)
{
	//draw_text(0,200,$"condiciones cumplidas: {condiciones_cumplidas}")
}

draw_set_color(_color);