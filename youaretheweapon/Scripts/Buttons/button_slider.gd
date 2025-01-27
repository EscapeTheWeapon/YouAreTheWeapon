extends Node2D

# signal given upon success
signal button_pressed(is_pressed)

var touch_down = false
var mouse_inside_area = false

# how far left and right the slider can go
var start_point: Vector2
var end_point: Vector2

var slider_piece

# rate of movement for slider to return
@export_range(0, 10, .1, "or_greater") var length_to_hold: float


# Called when the node enters the scene tree for the first time.
func _ready():
	slider_piece = $SliderPiece
	var slider_line = $SliderRail/Line2D

	start_point = slider_line.get_point_position(0)
	end_point = slider_line.get_point_position(1)

	slider_piece.position = start_point

	#print(start_point)
	#print(slider_piece.position)
	#print(end_point)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	var mouse_pos_x = get_local_mouse_position().x
	# get the piece to follow the mouse cursor while holding
	if Input.is_action_pressed("Left Mouse") and mouse_inside_area:
		touch_down = true

		# make sure x pos falls within slider's range
		var slider_mouse_pos = mouse_pos_x

		if slider_mouse_pos < start_point.x:
			slider_mouse_pos = start_point.x
		if slider_mouse_pos > end_point.x:
			slider_mouse_pos = end_point.x
		
		# move slider to follow mouse pos
		slider_piece.position.x = slider_mouse_pos

	else:
		touch_down = false

		# when player is not actively holding slider, slowly move left
		if slider_piece.position.x > start_point.x:
			slider_piece.position.x -= length_to_hold
		if slider_piece.position.x < start_point.x:
			slider_piece.position.x = start_point.x

	# when slider is not in leftmost position, emit signal
	if slider_piece.position.x != start_point.x:
		button_pressed.emit(true)
		#print("DONE")
	else:
		button_pressed.emit(false)
		#print("NOT DONE")

	#print(touch_down)
	#print(mouse_pos_x)
	

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false
