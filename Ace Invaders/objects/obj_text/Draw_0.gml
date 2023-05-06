if not variable_instance_exists(id,"txt"){txt = "default_text"}
if not variable_instance_exists(id,"halign"){halign = fa_center}
if not variable_instance_exists(id,"valign"){valign = fa_middle}
if not variable_instance_exists(id,"alpha"){alpha=100}

draw_set_font(fnt_main)

draw_set_alpha(alpha)
draw_set_halign(halign)
draw_set_valign(valign)
draw_text(x,y,text(txt))
