extends AnimatedSprite2D

@export var SPEED = 10 #speed per pixel of slime
var direction = 1 #direction of charater

#Raycast2D to detect collision and change direction
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight
#variable to reference animatedsprite2d for flipping sprite.
@onready var slime = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#determine direction and change sprite orientation
	if ray_cast_right.is_colliding():
		direction = -1
		slime.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		slime.flip_h = false
	#move slime acording to speed and direction
	position.x += direction * SPEED * delta
