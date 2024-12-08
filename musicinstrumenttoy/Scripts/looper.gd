extends Node2D


var pattern = []
var steps = 5

var current:int
var num_samples:int


#func _on_button_pressed() -> void:
#	%Timer.start()
#	num_samples = get_child_count() - 1
#	
#	for i in range(steps):
#		pattern.push_back(-1)
	
#	pattern[0] = 0
#	pattern[1] = 1
#	pattern[2] = 2
#	pattern[3] = 3
	




func _on_timer_timeout() -> void:
	var sn = pattern[current]
	if sn != -1:
		var s = get_child(sn)
		s.play()
		print(current)
	current = current + 1
	if current == steps:
		current = 0;



func _on_button_button_down() -> void:
	if %LoopSound1.playing:
		%Button.text = "Play"
		%Timer.stop()
	elif %LoopSound2.playing:
		%Button.text = "Play"
		%Timer.stop()
	elif %LoopSound3.playing:
		%Button.text = "Play"
		%Timer.stop()
	elif %LoopSound4.playing:
		%Button.text = "Play"
		%Timer.stop()
	else:
		%Button.text = "Stop"
		%Timer.start()
		print("timer")
		num_samples = get_child_count() - 1
		
		for i in range(steps):
			pattern.push_back(-1)
			
		pattern[0] = 0
		pattern[1] = 1
		pattern[2] = 2
		pattern[3] = 3
		
