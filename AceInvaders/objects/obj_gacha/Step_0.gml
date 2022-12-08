if gachaOpened{sprite_index=asset_get_index("spr_gacha_capsule_" + global.gachaSelect)}
global.ticketDepped = 1
// gacha decide
if position_meeting(mouse_x,mouse_y,id)
{
	if mouse_check_button(mb_left) == true
	{
		show_debug_message("B")
		
		tickAmt = ini_read_real("resc","sticket",0)
		ticketDepOffset = round(global.ticketDepped/3)+1
		randIndexer = irandom_range(ticketDepOffset*-1,ticketDepOffset)
		randIndexer = global.ticketDepped + randIndexer
		tickWrite = tickAmt - global.ticketDepped
		ini_write_real("resc","sticket",tickWrite)
		global.ticketDepped = 0
	 
		show_debug_message("C")
		
		ds_grid_add(ballInfo,5,ds_grid_height(ballInfo),randIndexer)
		ds_grid_add(ballInfo,7,ds_grid_height(ballInfo),1)
		ds_grid_sort(ballInfo,5,true)
		isGachaGot = 0
		gachaGotYCheck = 0
		
		show_debug_message("D")
		
		do
		{
			ds_grid_get(ballInfo,7,gachaGotYCheck)
			gachaGotYCheck++
		}
		until(isGachaGot)
		
		show_debug_message("E")
		
		sprite_index = asset_get_index(ds_grid_get(ballInfo,2,gachaGotYCheck))
		gachaGotText = ds_grid_get(ballInfo,3,gachaGotYCheck)
		
		show_debug_message("F")
		
		ini_write_real("cannon",gachaGotYCheck,0)
	}
}
