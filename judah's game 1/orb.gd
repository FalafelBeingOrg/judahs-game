extends Area2D
@onready var collider = $collider
@onready var tilemap = get_node("/root/Node2D/TileMap")
# Called when the node enters the scene tree for the first time.
func _ready():
	teleport()
	print("hello")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if body_entered:
		if overlaps_body(tilemap):
			teleport()
		
func teleport():
	position = Vector2(randi_range(0,1151),randi_range(0, 647))

