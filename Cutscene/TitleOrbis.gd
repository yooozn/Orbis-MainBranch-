extends Control



func _on_NewGame_pressed():
	get_tree().change_scene("res://Levels/IntroCutscene.tscn")
	print("sAM")


func _on_Exit_pressed():
	get_tree().quit()
