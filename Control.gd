extends Control

var pressed=false

func _draw():
	
	var r = Rect2( Vector2(), get_size() )
	if (pressed):
		#This should probably be replaced with a texture sometime later
		draw_rect(r, Color(1,1,0) )
	else:
		draw_rect(r, Color(0,1,1) )

func _input_event(event):
	if (event.type==InputEvent.MOUSE_BUTTON and event.pressed):
		pressed=true
		update()
