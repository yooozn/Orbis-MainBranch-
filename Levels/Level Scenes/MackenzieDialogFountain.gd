extends Area2D




func _on_MackenzieDialogFountain_body_entered(body):
	Globals.MackenzieDialog2Start = true
	Globals.Cutscene = true
	Globals.cantmove = true
	Globals.MackenzieDialog2End = false
	self.queue_free()
