extends Node2D

@onready var play: Button = %Play
@onready var quit: Button = %Quit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_viewport().size = DisplayServer.screen_get_size()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if %Play.is_hovered():
		%PlayHover.texture = load("res://Sprites/Well Yes! Hover.png")
	else:
		%PlayHover.texture = load("")
	pass
	
	if %Quit.is_hovered():
		%QuitHover.texture = load("res://Sprites/No...Hover.png")
	else:
		%QuitHover.texture = load("")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Music.tscn")
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()
	pass
