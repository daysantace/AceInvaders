global.lat_jp=font_add("font_lat_jp.ttf",12,false,false,32,40959)
font_add_enable_aa(false)
draw_set_font(global.lat_jp)
draw_set_color(c_white)
switch(os_get_language()){
	case "ja": {global.locale=LOCALE.JP}
	case "de": {global.locale=LOCALE.DE}
	default: {global.locale=LOCALE.EN}
}
global.flscr = false
room_goto(titleroom)
