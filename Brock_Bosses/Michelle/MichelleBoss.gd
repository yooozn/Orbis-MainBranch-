extends Node2D

func _ready():
	if Globals.MichelleDialog1End == true:
		$"MichelleDialog1".scale = Vector2(0, 0) 
		$"Node2D/MichelleDialog".position.x = -999
#		$""MichelleDialog1"/TitleIntroduction/Timer2".start()
	if Globals.MichelleMemoryEnd == true:
		$"Node2D".queue_free()
func _process(delta):
	if Globals.MichelleDialog1Start == true:
		$"MichelleDialog1".scale = Vector2(1, 1) 
		$"MichelleDialog1/TitleIntroduction/Timer".start()
	if Globals.MichelleMemoryEnd == true:
		$"MichelleDialog2".scale = Vector2(1, 1)
		$"MichelleStand".show()
		$"Portal/AnimationPlayer".play("Avalible")
		$"Portal2/AnimationPlayer".play("New Anim")
	if Globals.MichelleDialog2End == true:
		$"MichelleDialog2".scale = Vector2(0, 0)
	pass
