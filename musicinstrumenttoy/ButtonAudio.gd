extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_button_button_down() -> void:
	
	pass # Replace with function body.


func _on_play_button_down() -> void:
	if %AudioPlay.playing:
		%Play.text = "Play"
		%AudioPlay.stop()
	else:
		%Play.text = "Stop"
		%AudioPlay.play()
	pass # Replace with function body.
