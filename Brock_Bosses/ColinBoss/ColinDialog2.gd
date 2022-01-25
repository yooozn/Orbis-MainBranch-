extends CanvasLayer

var dialog = [
	
	"Hey! Did you just see my memories? You muse know the Dreamer pretty well, then...",
	"The coral lets us breathe underwater, in case you were wondering. However, if you want more on that, you'll have to venture a little deeper.",
	
]

var once = false
var dialog_index = 0
var finished = false


func _ready():
	if Globals.ColinDefeated == false || Globals.ColinDialog2End == true:
		self.scale = Vector2(0, 0) # Hide
		return
	else:
		load_dialog()
func _process(delta):
		if Globals.ColinDefeated == false || Globals.ColinDialog2End == true:
			return
		if Input.is_action_just_pressed("attack"):
			load_dialog()
func load_dialog():
	if dialog_index < dialog.size():
		if dialog_index == 0:
			Voices.play_voiceline(15)
		if dialog_index == 1:
			Voices.play_voiceline(16)
			Voices.stop(15)
		$"Text".bbcode_text = dialog[dialog_index]
		dialog_index += 1
		$"Tween".interpolate_property(
			$"Text", "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$"Tween".start()
	else:
		Globals.ColinDialog2Start = false
		self.scale = Vector2(0, 0)
		Globals.cantmove = false
		Globals.Cutscene = false
		Globals.ColinDialog2End = true
		Voices.stop(16)
