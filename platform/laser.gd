extends Sprite

func _on_Area2D_body_entered(body):
	if body.is_in_group("char") :
		body.die()

func _on_laser_button_close_laser():
	$laserClose.play()
	$Sprite/AnimationPlayer.play("close")

func _on_laser_button2_close_laser():
	$laserClose.play()
	$Sprite/AnimationPlayer.play("close")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "close" :
		queue_free()
