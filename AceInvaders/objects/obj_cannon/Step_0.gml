/// @desc movement, shooting, display
x = mouse_x

function defBullet(amt,cannHeight,spray,cooldown)
{
	bullet_amt = amt
	cann_height = cannHeight
	bullet_spray = spray
	fire_cooldown = cooldown
}

switch(global.ballID){
	case 0:defBullet(1,68,0,30);break // ace
	case 1:defBullet(2,60,10,15);break // bi
	case 2:defBullet(5,50,50,60);break // nb
}
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

