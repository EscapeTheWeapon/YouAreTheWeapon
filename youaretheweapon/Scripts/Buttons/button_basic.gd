extends Area2D

# signal given upon success
signal button_pressed(is_pressed)

var touch_down = false
var mouse_inside_area = false

# Called when the node enters the scene tree for the first time.
func _ready():
	touch_down = false
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if Input.is_action_just_pressed("Left Mouse") and mouse_inside_area:
		touch_down = true
	button_pressed.emit(touch_down)
	#print(touch_down)

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false
