extends Area2D




func _on_MackenzieDialogFountain_body_entered(body):
	Globals.Dialog = true
	Globals.Cutscene = true
	Globals.cantmove = true
	Globals.Finished = false
	self.queue_free()
