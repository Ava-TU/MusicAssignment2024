extends Node2D

@export var bus_name: String

var bus_index: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_viewport().size = DisplayServer.screen_get_size()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_button_button_down() -> void:
	%Button.play()


func _on_play_button_down() -> void:
	#Displays text on the button depending on if the audio is playing or not
	if %AudioPlay.playing:
		%AudioPlay.stop()
	else:
		%AudioPlay.play()


func _on_pitch_1_value_changed(value: float) -> void:
	%Button.pitch_scale = value
	%BlueDrum.pitch_scale = value


func _on_volume_value_changed(value: float) -> void:
	%Button.volume_db = value
	AudioServer.set_bus_volume_db(
		bus_index,
		linear_to_db(value)
	)
	%BlueDrum.volume_db = value
	AudioServer.set_bus_volume_db(
		bus_index,
		linear_to_db(value)
	)
	


func _on_blue_button_down() -> void:
	%BlueDrum.play()
	pass # Replace with function body.


func _on_cym_button_down() -> void:
	%Cymbol1.play()
	pass # Replace with function body.


func _on_bal_button_down() -> void:
	%Cymbal2.play()
	pass # Replace with function body.
