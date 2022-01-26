extends Node2D

func _ready():
	if Globals.MichelleDialog1End == true:
		$"MichelleDialog1".scale = Vector2(0, 0) 
		$"MichelleDialog1".queue_free()
	if Globals.MichelleDefeated == true:
		$"MichelleCutsceneTrigger".queue_free()
		$"Node2D".queue_free()
func _process(delta):
	if Globals.MichelleDialog1Start == true:
		$"MichelleDialog1".scale = Vector2(1, 1) 
	if Globals.MichelleDefeated == true:
		$"MichelleStand".show()
		$"Portal/AnimationPlayer".play("Avalible")
		$"Portal2/AnimationPlayer".play("New Anim")
