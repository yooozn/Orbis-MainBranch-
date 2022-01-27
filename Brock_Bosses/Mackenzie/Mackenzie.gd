extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	if Globals.MackenzieDialog3Start == true:
		$"MackenzieDialog1".scale = Vector2(1, 1) 
		print('whyy')
#		$"ColinDialog1/TitleIntroduction/Timer".start()
#	if Globals.ColinDefeated == true:
#		$"ColinIdle".show()
#		$"Portal/AnimationPlayer".play("MichelleAvalible")
#		$"Portal2/AnimationPlayer".play("Michelleyes")
		pass
