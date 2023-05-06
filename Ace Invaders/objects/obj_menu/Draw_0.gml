var i = 0
repeat(buttons){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_main)
	xx = (menu_x/2)
	yy = menu_y +(button_h+button_padding)*i
	
	draw_set_colour(c_bg)
	draw_rectangle(xx,yy,xx+button_w,yy+button_h,false)
	draw_set_colour(c_white)
	if(menu_index == i) {draw_set_colour(c_mensel)}
	draw_text(xx + button_w/2,yy + button_h/2,button[i])
	i++
}
