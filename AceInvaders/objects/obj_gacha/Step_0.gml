if gachaOpened{sprite_index=asset_get_index("spr_gacha_capsule_" + global.gachaSelect)}

// gacha decide
if position_meeting(mouse_x,mouse_y,id) and mouse_check_button_pressed(mb_left)
{
	ticketDepOffset = round(global.ticketDepped/3)+1
	randIndexer = irandom_range(ticketDepOffset*-1,ticketDepOffset)
	randIndexer = global.ticketDepped + randIndexer
	global.ticketDepped = 0
	
}
