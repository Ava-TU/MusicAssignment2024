extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_button_button_down() -> void:
	%Button.play()


func _on_play_button_down() -> void:
	#Displays text on the button depending on if the audio is playing or not
	if %AudioPlay.playing:
		%Play.text = "Play"
		%AudioPlay.stop()
	else:
		%Play.text = "Stop"
		%AudioPlay.play()


func _on_pitch_1_value_changed(value: float) -> void:
	%Button.pitch_scale = value


func _on_volume_value_changed(value: float) -> void:
	%Button.volume_db = value
