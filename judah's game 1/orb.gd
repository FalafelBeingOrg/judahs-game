extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(randi_range(0,1151),randi_range(0, 647))
	print("hello")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
