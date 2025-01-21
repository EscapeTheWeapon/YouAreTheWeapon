extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$HoldTimer.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	pass

func _on_basic_hit_button_pressed():
	$HoldTimer.start()