extends Node

@export var spawn_object = preload("res://Scenes/enemy.tscn").instantiate()
# Called when the node enters the scene tree for the first time.
func _ready():
	spawn() 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func spawn():
	var obj = spawn_object
	add_child(obj)
