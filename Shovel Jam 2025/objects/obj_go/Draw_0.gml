/// @description Cambia el color

var _color = c_white;
if (condiciones_cumplidas)
	_color = c_green;
else
	_color = c_red;

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,_color,image_alpha);