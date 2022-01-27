extends Node2D

onready var fade_class = load("res://Levels/CutsceneTransition.tscn")
onready var cutscene_class = load("res://Levels/ColinMemory.tscn")
export(String, FILE) var Video = cutscene_class

func _ready():
	if Globals.MackenzieDialog3End == true:
		$"MackenzieDialog1".scale = Vector2(0, 0) 
		$"DisplacementNode/MackenzieDialog".position.y = 999
	if Globals.MackenzieMemoryEnd == true:
		$"DisplacementNode".queue_free()
func _process(delta):
	if Globals.MackenzieDialog3Start == true:
		$"MackenzieDialog1".scale = Vector2(1, 1) 
		print('whyy')
#		$"ColinDialog1/TitleIntroduction/Timer".start()
	if Globals.MackenzieMemoryEnd == true:
		$"MackenzieDialog2".scale = Vector2(1, 1) 
		$"MackenzieIdle-2".show()
		$"Portal/AnimationPlayer".play("MichelleAvalible")
#		$"Portal2/AnimationPlayer".play("Michelleyes")
	if Globals.MackenzieDialog4End == true:
		$"MackenzieDialog2".scale = Vector2(0, 0)
		pass
