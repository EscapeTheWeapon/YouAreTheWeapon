extends Node

var puzzle_scene
var weapon_scene

# Called when the node enters the scene tree for the first time.
func _ready():
	puzzle_scene = $PuzzleScene
	weapon_scene = $WeaponScene

	# start on puzzle scene
	puzzle_scene.visible = true
	weapon_scene.visible = false

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if Input.is_action_just_pressed("Spacebar"):
		puzzle_scene.visible = !puzzle_scene.visible
		weapon_scene.visible = !weapon_scene.visible
	pass
