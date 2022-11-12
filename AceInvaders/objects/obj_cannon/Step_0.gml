/// @desc movement, shooting, display
x = mouse_x

// fire
if mouse_check_button_pressed(mb_left) and can_fire=true
{
	repeat(bullet_amt){instance_create_layer(x,y,layerid,bulletID)}
	alarm[0]=fire_cooldown
	can_fire=false
}

