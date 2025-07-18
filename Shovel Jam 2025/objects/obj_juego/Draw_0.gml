/// @description escribe la version en pantalla

var _halign = draw_get_halign();
draw_set_halign(fa_center);
draw_text(room_width/2,room_height-25,$"{version}");
draw_set_halign(_halign);