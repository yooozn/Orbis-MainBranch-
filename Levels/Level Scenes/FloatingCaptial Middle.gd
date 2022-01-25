extends Node2D


func _process(delta):
		if Globals.Dialog == true:
			$"MackenzieCutscene/MackenzieCutscene".scale = Vector2(1, 1) 

func _ready():
		if Globals.Finished == true:
			$"MackenzieDialogFountain".queue_free()
			$"MackenzieIdle1-1".queue_free()
			
			
