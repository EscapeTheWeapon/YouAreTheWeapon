extends Node

var number_buttons_completed

@export var buttons_to_complete = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	number_buttons_completed = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	pass

func _on_is_activated():
	number_buttons_completed += 1
	print(number_buttons_completed)
