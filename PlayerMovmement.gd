extends CharacterBody2D #Top node

#variables for movmement
@export var SPEED = 300.0
@export var JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

#Process movement related physics every frame
func _physics_process(delta):
	# Add the gravity if in the air
	if not is_on_floor():
		velocity.y += gravity * delta

	# Jump buttion pressed and also on the ground
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("Left", "Right") #Left/right in input options
	if direction:#direction as above
		velocity.x = direction * SPEED#direction and speed by velocity.
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)#no movement

	move_and_slide()#move and slide function
