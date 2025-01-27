extends Node2D

@export_range(0, 10, .1, "or_greater") var length_to_hold: float

# signal given upon success
signal button_pressed(is_pressed)

var touch_down = false
var mouse_inside_area = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$HoldTimer.one_shot = true
	$HoldTimer.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	# start timer the moment the button is pressed
	if Input.is_action_just_pressed("Left Mouse") and mouse_inside_area:
		$HoldTimer.start(length_to_hold)
		touch_down = true
	else:
		touch_down = false

	# make sure player holds, if mouse is released/exits then stop timer
	if Input.is_action_pressed("Left Mouse") == false or mouse_inside_area == false:
		$HoldTimer.stop()
		touch_down = false
	
	#print(touch_down)
	#print($HoldTimer.time_left)

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false

func _on_hold_timer_timeout():
	button_pressed.emit(true)
	#print("DONE")

