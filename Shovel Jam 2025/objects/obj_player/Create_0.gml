/// @description 

button_left = ord("A");
button_right = ord("D");
button_action = vk_space;

enum VELOCIDAD_PLAYER // velocidad a la que se desplaza
{
	NORMAL = 4,
	LENTA = 2
}

velocidad = VELOCIDAD_PLAYER.NORMAL;

accion = false;
objeto_accionable = [	obj_helice,
						obj_go];


/// @description cambia la velocidad de desplazamiento
/// @param {VELOCIDAD_PLAYER}  vel VELOCIDAD_PLAYER
function CambiarVelocidad(vel)
{
	velocidad = vel;
}