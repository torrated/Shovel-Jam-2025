/// @description Escribe FUEL en pantalla

var _halign = draw_get_halign();
draw_set_halign(fa_center);
draw_text(x,y,"rpm");
draw_self();
draw_set_halign(_halign);