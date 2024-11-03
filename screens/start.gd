extends Control
signal start_button_pressed


func _on_button_start_button_up():
	$AudioStreamPlayer.play()
	start_button_pressed.emit()
