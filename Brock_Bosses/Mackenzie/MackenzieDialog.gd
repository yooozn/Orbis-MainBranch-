extends Area2D




func _on_MackenzieDialog_body_entered(body):
	Globals.MackenzieDialog3Start = true
	Globals.Cutscene = true
	Globals.cantmove = true
	Globals.Finished = false
	self.queue_free()

