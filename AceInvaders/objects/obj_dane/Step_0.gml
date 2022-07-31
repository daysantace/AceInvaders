/// @desc move and ball
ball("normal")
if s_health<=0 or y>370{
	instance_destroy(id)
	if s_health<=0 {
		global.score+=10
	}
}
y+=(room_speed/120)*2
