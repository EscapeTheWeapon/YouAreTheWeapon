extends Node

@export var spawn_object = preload("res://Scenes/enemy.tscn").instantiate()
@export var is_alive = "res://Scripts/enemy.gd"
var failcounter: int = 0

func _ready():
	spawn() 
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	print_debug(failcounter)
	if failcounter == 3:
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
	pass
	

func spawn():
	var obj = spawn_object
	add_child(obj)


func _on_fail_timer_timeout():
	failcounter += failcounter
	spawn()
	pass # Replace with function body.
