extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("Jump"):#initiate scene change with "Jump"
		get_tree().change_scene("res://Assets/Scenes/world.tscn")#change scene to world
