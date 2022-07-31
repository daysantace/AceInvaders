if place_meeting(x,y,obj_cursor){image_index=bid+2;crsm = 1}
else{image_index=bid;crsm = 0}
if crsm == 1 and mouse_check_button_pressed(mb_left){
	switch(bid){
		case 0: room_goto(playroom);break;
		case 1: instance_create_depth(room_width/3,room_height/3,-1,obj_menu);break;
	}
}
