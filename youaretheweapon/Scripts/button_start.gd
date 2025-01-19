class_name MainMenu
extends Control


@onready var button_start = $Control/ButtonStart as Button 
@onready var start_level = preload("res://Scenes/Trial Scene.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	button_start.button_down.connect(on_start_pressed)
	

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)
	
