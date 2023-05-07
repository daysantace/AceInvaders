/// @description define vars and tables

// global vars
global.pause		= true
global.view_width   = camera_get_view_width(view_camera[0])
global.view_height  = camera_get_view_height(view_camera[0])

global.key_revert    = ord("X")
global.key_fire      = mb_left
global.key_ability   = vk_space

display_set_gui_size(global.view_width,global.view_height)

//enum menu classes
enum menu_page{
	main,
	play,
	settings,
	audio,
	performance,
	controls,
	height
}

enum menu_element_type{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

// make menu pages
ds_menu_main = create_menu_page(
	[text("play"),menu_element_type.page_transfer,menu_page.play],
	[text("settings"),menu_element_type.page_transfer,menu_page.settings],
	[text("exit"),menu_element_type.script_runner,terminate]
)

ds_play = create_menu_page(
	[text("play_endless"),menu_element_type.script_runner,gamestart("endless")],
	[text("play_gacha"),menu_element_type.script_runner,gamestart("gacha")],
	[text("back"),menu_element_type.page_transfer,menu_page.main],
)

ds_settings = create_menu_page(
	[text("set_audio"),menu_element_type.page_transfer,menu_page.audio],
	[text("set_language"),menu_element_type.shift,langset,0,["English"]],
	[text("set_performance"),menu_element_type.page_transfer,menu_page.performance],
	[text("set_controls"),menu_element_type.page_transfer,menu_page.controls],
	[text("back"),menu_element_type.page_transfer,menu_page.main]
)

ds_audio = create_menu_page(
	[text("aud_master"),menu_element_type.slider,volumeset,1,[0,1]],
	[text("aud_sfx"),menu_element_type.slider,volumeset,1,[0,1]],
	[text("aud_bgm"),menu_element_type.slider,volumeset,1,[0,1]],
	[text("back"),menu_element_type.page_transfer,menu_page.settings]
)

ds_performance = create_menu_page(
	[text("pef_glow"),menu_element_type.toggle,pef_settings,[text("yes"),text("no")]],
	[text("pef_fps"),menu_element_type.toggle,pef_settings,[text("yes"),text("no")]],
	[text("pef_fullscreen"),menu_element_type.toggle,pef_settings,[text("yes"),text("no")]],
	[text("back"),menu_element_type.page_transfer,menu_page.settings]
)

ds_controls = create_menu_page(
	[text("cnt_fire"),menu_element_type.input,"key_fire",mb_left],
	[text("cnt_ability"),menu_element_type.input,"key_ability",vk_space],
	[text("cnt_movement"),menu_element_type.toggle,0,[text("cnt_movement_mouse"),text("cnt_movement_arrow")]],
	[text("back"),menu_element_type.page_transfer,menu_page.settings]
)

// change page
page = 0
menu_pages = [ds_menu_main,ds_play,ds_settings,ds_audio,ds_performance,ds_controls]
var i = 0, _array_len = array_length(menu_pages)
repeat(_array_len){
	menu_option[i] = 0
	i++
}
