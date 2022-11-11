/// @desc movement, shooting, display
x = mouse_x

if mouse_check_button_pressed(mb_left) and can_fire=true
{
	repeat(bullet_amt)
	{
		ranx = random(bullet_spray)
		ranx-=round(bullet_spray)
		instance_create_layer(x+ranx,y-cann_height,layerid,bulletID)
	}
	alarm[0]=fire_cooldown
	can_fire=false
}

