extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	%Button.play()
	print("1")
	%Sprite2D.texture = load("res://wallpaper1.jpg") # changes sprite by loading in another image
	await get_tree().create_timer(1.0).timeout
	%Sprite2D.texture = load("res://icon.svg")


func _on_h_slider_value_changed(value: float) -> void:
	%Button.pitch_scale = value
	pass # Replace with function body.


func _on_volume_value_changed(value: float) -> void:
	%Button.volume_db = value
	pass # Replace with function body.
