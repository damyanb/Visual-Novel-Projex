extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var c

# Called when the node enters the scene tree for the first time.
func _ready():
	animation = "color"
	stop()
	c = 4
	speed_scale=0
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("salir"):
		get_tree().quit()
	if Input.is_action_just_released("min") && OS.is_window_minimized()==false :
		OS.set_window_minimized(true)
	if c<=5 && Input.is_action_just_released("color"):
		c = c+1
	if c>5 && Input.is_action_just_released("color"):
		c = 0
	frame = c
