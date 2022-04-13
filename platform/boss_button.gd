extends AnimatedSprite

var active = true
signal hit_boss

func _on_Area2D_body_entered(body):
	if body.is_in_group("char") and active:
		active = false
		$Timer.start()
		$CPUParticles2D.emitting = false
		play("pressed")
		emit_signal("hit_boss")

func _on_Timer_timeout():
	$CPUParticles2D.emitting = true
	play("unpressed")
	active = true
