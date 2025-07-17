/// @description El avion avanza hasta el borde del barco y despega

var _borda = instance_place(x,y,obj_borda);
velocidad_horizontal *= 1.025;


if (_borda == noone && !airborne)
	x = x - velocidad_horizontal;

if (_borda <> noone && !airborne)
	airborne = true;

if (airborne)
{
	x -= velocidad_horizontal;
	velocidad_vertical *= 1.05;
	y -= velocidad_vertical;
}

if (x+sprite_width > 0)
	alarm[4] = 1;
else
	alarm[5] = 1;