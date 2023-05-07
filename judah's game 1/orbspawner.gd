extends Node2D

var random = RandomNumberGenerator.new()
var spawnTimer = 500
var timeSinceSpawn = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	spawn()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timeSinceSpawn+=1
	if timeSinceSpawn>=spawnTimer:
		#spawn()
		print("a")
		timeSinceSpawn=0


func spawn():
	var orb = load("res://orb.tscn").instantiate()
	add_child(orb)
	#var orb = scene.instantiate()
	#random.randomize()
	#orb.position = Vector2(random.randi_range(0,1151),random.randi_range(-647,0))
