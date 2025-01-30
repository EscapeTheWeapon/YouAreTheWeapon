extends Node2D

var is_valid

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.frame = 0
	is_valid = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	for button in get_children():
		if button is Area2D:
			button.monitoring = is_valid
	
	$AnimatedSprite2D.frame = is_valid

func _on_button_pressed(is_pressed):
	is_valid = is_pressed
