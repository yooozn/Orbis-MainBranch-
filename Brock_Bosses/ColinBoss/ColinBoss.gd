extends Node2D


func _ready():
	if Globals.ColinDialog1End == true:
		$"ColinDialog1".scale = Vector2(0, 0) 
		$"ColinDialog1/TitleIntroduction/Timer2".start()
	if Globals.ColinDefeated == true:
		$"ColinDialogue".queue_free()
		$"Node2D".queue_free()
	pass
func _process(delta):
	if Globals.ColinDialog1Start == true:
		$"ColinDialog1".scale = Vector2(1, 1) 
		print('whyy')
		$"ColinDialog1/TitleIntroduction/Timer".start()
	if Globals.ColinDefeated == true:
		$"ColinIdle".show()
		$"Portal/AnimationPlayer".play("MichelleAvalible")
		$"Portal2/AnimationPlayer".play("Michelleyes")
		pass
