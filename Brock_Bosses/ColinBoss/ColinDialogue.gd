extends Area2D



func _on_ColinDialogue_body_entered(body):
	Globals.ColinDialog1Start = true
	Globals.Cutscene = true
	Globals.cantmove = true
	Globals.Finished = false
	self.queue_free()

