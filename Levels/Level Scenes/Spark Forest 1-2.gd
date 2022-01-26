extends Node2D

var berries = 0 

func _process(delta):
		if Globals.Dialog == true:
			$"MackenzieStand".show()
			$'Dialog Box'.scale = Vector2(1, 1) # Hide
			
func _ready():
		if Globals.Finished == true:
			$"MackenziePortal/Collision1".queue_free()
			$"MackenziePortal/MackenzieCrouch".queue_free()


func _on_Collectable_berries_collected():
	pass
