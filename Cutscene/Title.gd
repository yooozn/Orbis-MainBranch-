extends TextureProgress



func _on_Start_timeout():
	value += 1
	modulate.a += .01
	self_modulate.a += .01
