extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var f

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().get_root().set_transparent_background(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
