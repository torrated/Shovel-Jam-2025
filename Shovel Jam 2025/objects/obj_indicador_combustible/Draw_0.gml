/// @description Escribe FUEL en pantalla

var _halign = draw_get_halign();
draw_set_halign(fa_center);
draw_text(x,y,"FUEL");
draw_self();
draw_set_halign(_halign);