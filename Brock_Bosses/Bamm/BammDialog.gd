extends Area2D



func _on_BammDialog_body_entered(body):
	Globals.SamDialog1Start = true
	Globals.Cutscene = true
	Globals.cantmove = true
	Globals.Finished = false
	self.queue_free()

