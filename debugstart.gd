extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_newgame_pressed():
	SaveAndLoad._newGame()


func _on_load_pressed():
	SaveAndLoad._Load()
	
