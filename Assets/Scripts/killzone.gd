extends Area2D

#variable for timer node
@onready var timer = $Timer

#when CharacterBody enters, Kill with fire
func _on_body_entered(body):
	print("Player Dead")
	timer.start()

#when the timer ends
func _on_timer_timeout():
	get_tree().reload_current_scene()
