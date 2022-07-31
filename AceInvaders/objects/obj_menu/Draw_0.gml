//draw bg and text
draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1)
draw_set_font(global.lat_jp)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
for(var i=0; i<op_length;i++){
	var _c = c_white
	if pos == i{_c = #f8fa78}
draw_text_color(x+op_border,y+op_border+op_space*i,text(option[menu,i]),_c,_c,_c,_c,1)
}
