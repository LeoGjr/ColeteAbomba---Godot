extends KinematicBody2D


export var speed = 350
onready var spr_player = $sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var dir = Vector2()
	if Input.is_action_pressed("left"):
		spr_player.flip_h = true
		dir.x = -1
		$shape.position.x = -23
	if Input.is_action_pressed("right"):
		spr_player.flip_h = false
		dir.x = 1
		$shape.position.x = 23.18
		
	if self.position.x < 62:
		self.position.x = 62
	if self.position.x > 450:
		self.position.x = 450
	move_and_slide(dir * speed)
