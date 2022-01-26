extends Node2D

func _ready():
	
	$"EndingCutscene/CollisionShape2D".disabled = true
	if Globals.SamDefeated == true:
		$"Node2D".queue_free()
func _process(delta):
	if Globals.SamDialog1Start == true:
		$"BammDialog1".scale = Vector2(1, 1) 
#		$"BammDialog1/TitleIntroduction/Timer".start()
	if Globals.SamDefeated == true:
		$"EndingCutscene/CollisionShape2D".disabled = false
