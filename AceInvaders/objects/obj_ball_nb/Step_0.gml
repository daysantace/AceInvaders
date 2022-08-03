target = instance_nearest(x,y,objcat_enm)
try{move_towards_point(target.x,target.y,3)}
catch(awooga){y--}
if y < 0 or place_meeting(x,y,objcat_enm){alarm[0]=1}
