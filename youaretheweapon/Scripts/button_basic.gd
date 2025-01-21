extends Area2D

var touch_down = false
var mouse_inside_area = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass 
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	pass

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false
