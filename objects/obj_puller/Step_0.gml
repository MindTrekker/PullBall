// power setting
if mouse_check_button(mb_left)=true{
	xpwr=point_distance(mouse_x,obj_ball.y,obj_ball.x,obj_ball.y)/12;
	ypwr=point_distance(obj_ball.x,mouse_y,obj_ball.x,obj_ball.y)/12;
}
// launch sequence
if mouse_check_button(mb_left)=false{
	//power limiter
if xpwr>50{
	xpwr=50
}
if ypwr>50{
	ypwr=50
}
//directional correction
	if mouse_x>obj_ball.x{
xpwr*=-1	
}
if mouse_y>obj_ball.y{
ypwr*=-1	
}
//force applier
obj_ball.hsp+=xpwr;
obj_ball.vsp+=ypwr;
//power reset
xpwr=0;
ypwr=0;
}
//debugging commands
if keyboard_check(ord("R")){
	game_restart()
}
if keyboard_check(ord("T")) && gamespeed_fps!=10{
game_set_speed(10,gamespeed_fps)	
}
if !keyboard_check(ord("T")) && gamespeed_fps!=50{
game_set_speed(50,gamespeed_fps)	
}
if keyboard_check(vk_f1){
room_goto(room01)	
}