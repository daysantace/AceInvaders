if gachaOpened{sprite_index=asset_get_index("spr_gacha_capsule_" + global.gachaSelect)}
global.ticketDepped = 1
// gacha decide
if position_meeting(mouse_x,mouse_y,id)
{
	show_debug_message("A")
	if mouse_check_button_pressed(mb_left)
	{
		show_debug_message("B")
		
		ticketDepOffset = round(global.ticketDepped/3)+1
		randIndexer = irandom_range(ticketDepOffset*-1,ticketDepOffset)
		randIndexer = global.ticketDepped + randIndexer
		global.ticketDepped = 0
	 
		show_debug_message("C")
		
		ds_grid_add(ballInfo,4,ds_grid_height(ballInfo),randIndexer)
		ds_grid_add(ballInfo,6,ds_grid_height(ballInfo),1)
		ds_grid_sort(ballInfo,4,true)
		isGachaGot = 0
		gachaGotYCheck = 0
		
		show_debug_message("D")
		
		do
		{
			ds_grid_get(ballInfo,6,gachaGotYCheck)
			gachaGotYCheck++
		}
		until(isGachaGot)
		
		show_debug_message("E")
		
		sprite_index = asset_get_index(ds_grid_get(ballInfo,1,gachaGotYCheck))
		gachaGotText = ds_grid_get(ballInfo,3,gachaGotYCheck)
		
		show_debug_message("F")
	}
}
