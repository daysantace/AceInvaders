/// @description draw menu
if(!global.pause){exit}

var _gw = global.view_width, _gh = global.view_height
var _ds_grid = menu_pages[page], _ds_height = ds_grid_height(_ds_grid)
var _y_buffer = 32, _x_buffer = 32
var _start_y = (_gh/2)-((((_ds_height-1)/2)*_y_buffer)), var _start_x = _gw/2

// draw pause bg
draw_sprite_stretched(spr_menubg,0,30,30,_gw-60,_gh-60)

// draw left elements
draw_set_valign(fa_middle)
draw_set_halign(fa_right)
var _ltx = _start_x - _x_buffer, _lty

var _yy = 0
repeat(_ds_height){
	_lty = _start_y + (_yy*_y_buffer)
	draw_text_transformed(_ltx,_lty,_ds_grid[# 0, _yy],2.1,2.1,0)
	_yy++
}
// draw line
draw_line(_start_x, _start_y, _start_x, _lty)

// draw right elements
