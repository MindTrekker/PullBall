//See obj_physcntrlr for constants
//edge tipping variables
var c_check=collision_line(x,y+17,x,y-17,obj_plat,true,false);
var l_check=collision_line(x-16,y+17,x-16,y-17,obj_plat,true,false);
var r_check=collision_line(x+16,y+17,x+16,y-17,obj_plat,true,false);
var t_check=collision_line(x+17,y-16,x-17,y-16,obj_plat,true,false);
var b_check=collision_line(x+17,y+16,x-17,y+16,obj_plat,true,false);
//terminal velocity
if (vsp<20){
vsp=vsp+grav}
//vertical collision	
if place_meeting(x,y+vsp,obj_plat){
while !place_meeting(x,y+sign(vsp),obj_plat){
y=y+sign(vsp);
}
//roll calculation
hsp_lock=hsp
//vertical bounce 
	if abs(vsp)>=3 && place_meeting(x,y+sign(vsp),obj_plat){
	vsp*=-.5
	}
else{
vsp=0;}
//horizontal friction
if abs(hsp)>.1{
hsp*=.95}
if abs(hsp)<.1{
hsp=0}
}
//horizontal collision
if place_meeting(x+hsp,y,obj_plat){
while !place_meeting(x+sign(hsp),y,obj_plat){
x=x+sign(hsp);	
}
//horizontal bouncing
	if abs(hsp)>=1 && place_meeting(x+sign(hsp),y,obj_plat){
	hsp*=-.6
	}
else{
hsp=0}
}
//temp

//edge tipping
if c_check=noone{
//right tipping
if l_check!=noone && r_check=noone{
	if abs(hsp)<1{
	hsp+=(abs(vsp)/8)
	if abs(vsp)>abs(hsp) && b_check!=noone{
		vsp=sign(vsp)*abs(hsp)
	}
	}
	
	/*if abs(hsp)>=abs(vsp){
	hsp+=.1
	vsp=hsp-sign(vsp)*.1}
	else{
		hsp=abs(vsp)
		vsp=-sign(vsp)}*/
}
//left tipping
if l_check=noone && r_check!=noone{
	if abs(hsp)<1{	
	hsp+=-(abs(vsp)/8)
	if abs(vsp)>abs(hsp) && b_check!=noone{
		vsp=sign(vsp)*abs(hsp)
	}
	}
	
	/*if abs(hsp)>=abs(vsp){
	hsp-=.1
	vsp=hsp-sign(vsp)*.1}
	else {
		hsp=-abs(vsp)
		vsp=-sign(vsp)
		}*/
}
}
//wall glitch quick-fix
if x<48{
x=49	
}
//motion (is always last)
y+=vsp;
x+=hsp;