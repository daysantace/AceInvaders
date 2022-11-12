if room == playroom{
	if keyboard_check_pressed(vk_escape) and not instance_exists(obj_menu){
		instance_create_depth(room_width/3,room_height/3,-1,obj_menu);menuon=!menuon
		if menuon{
			instance_deactivate_all(true)
			instance_activate_object(obj_menu)}
		else{instance_activate_all()}
	}
}
if keyboard_check_pressed(vk_f11){global.flscr=!global.flscr}
window_set_fullscreen(global.flscr)

