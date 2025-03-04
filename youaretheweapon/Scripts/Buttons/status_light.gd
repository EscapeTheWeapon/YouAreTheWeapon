extends Node2D

signal is_activated

var single_activation

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.frame = 0
	single_activation = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	pass

func _on_button_pressed(is_pressed):
	$AnimatedSprite2D.frame = is_pressed
	if is_pressed and not single_activation:
		is_activated.emit()
		single_activation = true
