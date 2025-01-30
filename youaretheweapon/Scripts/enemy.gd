extends Area2D
var mouse_inside_area = false
var is_alive = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if Input.is_action_pressed("Left Mouse") and mouse_inside_area:
		$".".queue_free()
		is_alive = false

func _on_mouse_entered():
	#pass # Replace with function body.
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false
