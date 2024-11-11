extends AnimatedSprite

func _ready():
	self.play()
	pass


func _on_explosao_animation_finished():
	queue_free()
