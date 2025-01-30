extends Node2D

var cursor_pos

var lower_bound: Vector2		# the (0,0) coord, top left
var upper_bound: Vector2		# the (m,n) coord, bot right

# Called when the node enters the scene tree for the first time.
func _ready():
	# get bounds set for area cursor may enter, based on collision shape rect
	var area = $CollisionShape2D.shape.get_rect()

	lower_bound = area.position + $CollisionShape2D.global_position
	upper_bound = area.end + $CollisionShape2D.global_position

	#print(area)
	#print(area.size)
	#print(lower_bound)
	#print(upper_bound)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	cursor_pos = get_global_mouse_position()

	cursor_pos.x = clamp(cursor_pos.x, lower_bound.x, upper_bound.x)
	cursor_pos.y = clamp(cursor_pos.y, lower_bound.y, upper_bound.y)

	#Input.warp_mouse(cursor_pos)

	$Node2D.position = cursor_pos - lower_bound

	#print(cursor_pos)
	