extends Area2D

signal button_pressed

var touch_down = false
var mouse_inside_area = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass 
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if Input.is_action_pressed("Left Mouse") and mouse_inside_area:
		touch_down = true
		button_pressed.emit()
	else:
		touch_down = false
	#print(touch_down)

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false
