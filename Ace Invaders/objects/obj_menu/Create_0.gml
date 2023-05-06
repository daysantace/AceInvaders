// global vars
global.pause		= true
global.view_width   = camera_get_view_width(view_camera[0])
global.view_height  = camera_get_view_height(view_camera[0])
global.key_revert   = ord("X")

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
	[text("set_language"),menu_element_type.page_transfer,menu_page.language],
	[text("set_performance"),menu_element_type.page_transfer,menu_page.performance],
	[text("set_controls"),menu_element_type.page_transfer,menu_page.controls],
	[text("back"),menu_element_type.page_transfer,menu_page.main],
)

ds_audio = create_menu_page(
	[text("
