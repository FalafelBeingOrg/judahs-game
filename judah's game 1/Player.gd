extends CharacterBody2D

@onready var balls = $PointLight2D
@onready var collider = $CollisionShape2D

var light = 1.5
var speed = 100
var move = Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	
	light -= 0.0004
	balls.texture_scale = light
	if light <= 0:
		get_tree().change_scene_to_file("res://start.tscn")
	move = Vector2.ZERO
	
	takeInput()
	
	velocity = move.normalized() * speed
	
	move_and_slide()
	
func takeInput():
	if Input.is_action_pressed("ui_right"):
		move.x += 1
	if Input.is_action_pressed("ui_left"):
		move.x -= 1
	if Input.is_action_pressed("ui_down"):
		move.y += 1
	if Input.is_action_pressed("ui_up"):
		move.y -= 1
