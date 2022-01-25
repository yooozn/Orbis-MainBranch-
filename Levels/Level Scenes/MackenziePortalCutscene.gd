extends Area2D


func _on_MackenziePortalCutscene_body_entered(body):
	if Globals.StanceChange == true:
		get_node("Collision2").disabled = false
		
	else:
		if Globals.StanceChange == false:
			get_node("Collision2").disabled = true
			Globals.Oli = true
			Globals.cutscene = true
