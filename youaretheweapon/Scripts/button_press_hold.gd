extends Node2D

@export_range(0, 10, .1, "or_greater") var length_to_hold: float

# Called when the node enters the scene tree for the first time.
func _ready():
	$HoldTimer.one_shot = true
	$HoldTimer.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if Input.is_action_just_pressed("Left Mouse") and _on_button_pressed():
		$HoldTimer.start(length_to_hold)
	elif Input.is_action_just_released("Left Mouse"):
		$HoldTimer.stop()
	print($HoldTimer.time_left)

func _on_hold_timer_timeout():
	print("DONE")

func _on_button_pressed():
	return true
