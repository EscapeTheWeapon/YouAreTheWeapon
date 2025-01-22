extends Area2D
var mouse_inside_area = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if Input.is_action_pressed("Left Mouse") and mouse_inside_area:
		$".".queue_free()

func _on_mouse_entered():
	pass # Replace with function body.
	mouse_inside_area = true

func _on_mouse_exited():
	pass # Replace with function body.
	mouse_inside_area = false
