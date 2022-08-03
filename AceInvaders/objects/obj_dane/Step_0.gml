/// @desc move and ball
if s_health<=0 or y>370{
	instance_destroy(id)
	if s_health<=0 {
		global.score+=10
	}
}
y+=(room_speed/120)*2
if place_meeting(x,y,objcat_ball){
	bullet_touching = object_get_name(instance_nearest(x,y,objcat_ball).object_index)
	switch bullet_touching{
		case "obj_ball_ace":s_health-=3;break
		case "obj_ball_bi":s_health-=2;break
		case "obj_ball_nb":s_health-=1;break
	}
}
