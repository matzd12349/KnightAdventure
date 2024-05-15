extends Area2D

#variable for timer node
@onready var timer = $Timer

#when CharacterBody enters, Kill with fire
func _on_body_entered(_body):
	print("Player Dead")
	Engine.time_scale = 0.5
	timer.start()

#when the timer ends
func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
