extends Sprite

func _ready():
	pass


func _process(delta):
	position.y -= 1.2

func _on_anim_animation_finished(anim_name):
	queue_free()
