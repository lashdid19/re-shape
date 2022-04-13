extends AnimatedSprite

signal close_laser;

func _on_Area2D_body_entered(body):
	if body.is_in_group("can_press") :
		$CPUParticles2D.emitting = false
		play("pressed")
		emit_signal("close_laser")
