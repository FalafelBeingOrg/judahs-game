extends Area2D
@onready var collider = $collider
@onready var tilemap = get_node("/root/Node2D/TileMap")
@onready var player = get_node("/root/Node2D/Player")
# Called when the node enters the scene tree for the first time.
func _ready():
	teleport()
	while player.position.distance_to(position) < 150:
		print("to close")
		teleport()
	print("hello")
	pass # Replace with function body.

func _physics_process(delta):
	if body_entered:
		if overlaps_body(tilemap):
			teleport()
		if overlaps_body(player):
			player.light += 0.15
			get_parent().spawn()
			get_parent().remove_child(self)

		
func teleport():
	position = Vector2(randi_range(0,1151),randi_range(0, 647))
