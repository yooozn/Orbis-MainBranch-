extends Node2D


func _process(delta):
		if Globals.MackenzieDialog2Start == true:
			$"MackenzieCutscene/MackenzieCutscene".scale = Vector2(1, 1) 
			$"MackenzieCutscene/TitleIntroduction/Timer".start()

func _ready():
		if Globals.MackenzieDialog2End == true:
			$"MackenzieDialogFountain".queue_free()
			$"MackenzieIdle1-1".queue_free()
			$"MackenzieCutscene/TitleIntroduction/Timer2".start()
			
			
