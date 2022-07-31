if room == playroom{
	if keyboard_check_pressed(vk_escape){global.menu_active = !global.menu_active
		if global.menu_active==true{instance_deactivate_all(true);instance_activate_object(obj_menu);instance_activate_object(obj_gui)}
		else{instance_activate_all();instance_deactivate_object(obj_menu)}
	}
	if global.menu_active == true{alarm[0]=3}
}
if keyboard_check_pressed(vk_f11){global.flscr=!global.flscr}
window_set_fullscreen(global.flscr)
