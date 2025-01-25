extends Node2D

# how far left and right the slider can go
var start_point: Vector2
var end_point: Vector2

var slider_piece

# length of time before a timer reaches its end
@export var length_to_hold: float


# Called when the node enters the scene tree for the first time.
func _ready():
	slider_piece = $SliderPiece
	var slider_line = $SliderRail/Line2D

	start_point = slider_line.get_point_position(0)
	end_point = slider_line.get_point_position(1)

	slider_piece.position = start_point

	print(start_point)
	print(slider_piece.position)
	print(end_point)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	pass


func _on_mouse_entered():
	pass # Replace with function body.


func _on_mouse_exited():
	pass # Replace with function body.
