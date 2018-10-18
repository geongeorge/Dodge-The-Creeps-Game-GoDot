extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (int) var min_speed
export (int) var max_speed
var mob_types = ["fly","swim","walk"]

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	$AnimatedSprite.animation= mob_types[randi() % mob_types.size()]
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Visibility_screen_exited():
	queue_free()
