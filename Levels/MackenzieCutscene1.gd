extends CanvasLayer


onready var fade_class = load("res://Levels/CutsceneTransition.tscn")



func _on_Cutscene_finished():
	var fade_scene = fade_class.instance()
	get_parent().add_child(fade_scene)
	
