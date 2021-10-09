extends KinematicBody
const SPEED = 6
const ROTSPEED = 6
var velocity = Vector3(0,0,0)
func _ready():
	pass
func _physics_process(delta):
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		velocity.x = 0
	elif Input.is_action_pressed("ui_right"):
		$MeshInstance.rotate_z(deg2rad(-ROTSPEED))
		velocity.z = 0
		velocity.x = 8
	elif Input.is_action_pressed("ui_left"):
		$MeshInstance.rotate_z(deg2rad(ROTSPEED))
		velocity.z = 0
		velocity.x = -8
		
	elif Input.is_action_pressed("ui_up"):
		$MeshInstance.rotate_x(deg2rad(-ROTSPEED))
		velocity.x = 0
		velocity.z = -8
	elif Input.is_action_pressed("ui_down"):
		$MeshInstance.rotate_x(deg2rad(ROTSPEED))
		velocity.x = 0
		velocity.z = 8
	#else:
	#	velocity.x = 0
	#elif Input.is_action_pressed("ui_up"):
	#	height.y = 5 # Sets the position of X to 10
	#else:
	#	velocity.x = 0
	#	velocity.z = 0
	move_and_slide(velocity)

	
	
	if velocity.x > 0:  # calculate friction
		#$MeshInstance.rotate_x(deg2rad(ROTSPEED))
		velocity.x -= .1
	if velocity.z > 0:
		#$MeshInstance.rotate_x(deg2rad(ROTSPEED))
		velocity.z -= .1

	if velocity.x < 0:
		#$MeshInstance.rotate_x(deg2rad(ROTSPEED))
		velocity.x += .1
	if velocity.z < 0:
		#$MeshInstance.rotate_x(deg2rad(ROTSPEED))
		velocity.z += .1
		
#	if velocity.y > 0:
#		velocity.y -= 5 # end friction calculations
		
