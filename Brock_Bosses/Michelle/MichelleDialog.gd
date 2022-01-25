extends Area2D



func _on_MichelleDialog_body_entered(body):
	Globals.MichelleDialog1Start = true
	Globals.Cutscene = true
	Globals.cantmove = true
	Globals.Finished = false
	self.queue_free()
