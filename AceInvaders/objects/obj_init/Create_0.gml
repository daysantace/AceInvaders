randomise()
global.lat_jp=font_add("font_lat_jp.ttf",12,false,false,32,40959)
font_add_enable_aa(false)
draw_set_font(global.lat_jp)
draw_set_colour(c_white)
switch(os_get_language()){
	case "de": {global.locale=LOCALE.DE}
	default: {global.locale=LOCALE.EN}
}
global.flscr = false
global.fpsEnabled = false
global.ticketDepped = 0
room_goto(titleroom)
