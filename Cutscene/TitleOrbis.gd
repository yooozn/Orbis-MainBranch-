extends Control



func _on_NewGame_pressed():
	SaveAndLoad._newGame()
	print("sAM")

func _on_LoadGame_pressed():
	SaveAndLoad._Load()

func _on_Exit_pressed():
	get_tree().quit()
