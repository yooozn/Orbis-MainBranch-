extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	$"Music/CollisionShape2D".position.x = -999
#	$"Music".position.x = -999
	Music.play_music(7)
	Music.stop(8)
	print("sam")
