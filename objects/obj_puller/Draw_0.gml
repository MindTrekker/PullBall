draw_set_color(c_lime);
ylength=mouse_y;
xlength=mouse_x;
//directional line
if mouse_check_button(mb_left)=true{
draw_line_width(xlength,ylength,obj_ball.x,obj_ball.y,4);	
}
/*collision test
draw_set_color(c_blue);
draw_line(obj_ball.x+16,obj_ball.y+34,obj_ball.x+16,obj_ball.y-2)
draw_line(obj_ball.x,obj_ball.y+34,obj_ball.x,obj_ball.y-2)
draw_line(obj_ball.x+32,obj_ball.y+34,obj_ball.x+32,obj_ball.y-2)*/

