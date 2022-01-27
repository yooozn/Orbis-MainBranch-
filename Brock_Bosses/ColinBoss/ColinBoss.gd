extends Node2D


func _ready():
	if Globals.ColinDialog1End == true:
		$"ColinDialog1".scale = Vector2(0, 0) 
		$ColinDialogue.position.x = -999
		$"ColinDialog1/TitleIntroduction/Timer2".start()
	if Globals.ColinMemoryEnd == true:
		$"ColinDialogue".queue_free()
		$"Node2D".queue_free()
	pass
func _process(delta):
	if Globals.ColinDialog1Start == true:
		$"ColinDialog1".scale = Vector2(1, 1) 
		print('whyy')
		$"ColinDialog1/TitleIntroduction/Timer".start()
	if Globals.ColinMemoryEnd == true:
		$"ColinIdle".show()
		$"ColinDialog2".scale = Vector2(1, 1)
#		$"Node2D/ColinMemory/CollisionShape2D".disabled = false
		$"Portal/AnimationPlayer".play("MichelleAvalible")
		$"Portal2/AnimationPlayer".play("Michelleyes")
	if Globals.ColinDialog2End == true:
		$"ColinDialog2".scale = Vector2(0, 0)
		pass
