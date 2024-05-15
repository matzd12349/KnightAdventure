extends Area2D

#when object enters collider
func _on_body_entered(_body):
	print("Coin")
	queue_free()
