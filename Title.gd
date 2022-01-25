extends CanvasLayer


func _on_Start_timeout():
	$"Orbis".value += 1
	$"Orbis".modulate.a += .01
	$"Orbis".self_modulate.a += .01
