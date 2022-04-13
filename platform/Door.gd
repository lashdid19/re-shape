extends Sprite

var active = false
signal finish

func _on_star_collected():
	active = true
	$Sprite/AnimationPlayer.play("on")

func _on_Area2D_body_entered(body):
	if body.is_in_group("char") and active :
		emit_signal("finish")

func _on_boss_end():
	active = true
	$Sprite/AnimationPlayer.play("on")
