extends ColorRect

func _ready():
	show()
	$AnimationPlayer.play("fade_out")

func _on_animation_player_animation_finished(anim_name):
	#print_debug("finished: " + anim_name)
	if anim_name == "fade_out":
		hide()
		#print_debug("hide: " + anim_name)
