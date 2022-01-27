extends Node2D

func _ready():
	if Globals.MackenzieDialog3End == true:
		$"ColinDialog1".scale = Vector2(0, 0) 
		$ColinDialogue.position.x = -999
	if Globals.MackenzieMemoryEnd == true:
		$"DisplacementNode".queue_free()
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
