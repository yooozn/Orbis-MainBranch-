extends CanvasLayer

var dialog = [
	"Why hello there, little one. Welcome to Orbis... You look familiar, but I think you're a new face.",
	"Everyone around here calls me the Dreamer, but I'm mostly just an explorer.",
	"Anyway, there's a lot to see in this world, so please take this map. I'm sure it'll make your travels much easier. I'm sure we'll be seeing each other soon. Have fun, little ghost.",
]

var once = false
var dialog_index = 0
var finished = false


func _ready():
	if Globals.Dialog == false:
		self.scale = Vector2(0, 0) # Hide
		return
	else:
		load_dialog()
func _process(delta):
		if Globals.Dialog == false:
			return
		if Input.is_action_just_pressed("attack"):
			load_dialog()
func load_dialog():
	if dialog_index < dialog.size():
		if dialog_index == 0:
			Voices.play_voiceline(1)
		if dialog_index == 1:
			Voices.play_voiceline(2)
			Voices.stop(1)
		if dialog_index == 2:
			Voices.play_voiceline(3)
			Voices.stop(2)
		$"Text".bbcode_text = dialog[dialog_index]
		dialog_index += 1
		$"Tween".interpolate_property(
			$"Text", "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$"Tween".start()
	else:
		Globals.Dialog = false
		self.scale = Vector2(0, 0)
		Globals.cantmove = false
		Globals.Cutscene = false
		$"../MackenzieStand/AnimationPlayer".play('New Anim')
		Voices.stop(3)
		Music.stop(2)
		Music.play_music(1)
		


func _on_Timer_timeout():
	$"TextBox".value += 5
