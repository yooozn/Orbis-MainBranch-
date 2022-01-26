extends CanvasLayer

var dialog = [
	"Heyo!",
	"We're breathing under water! How cool is that?! This place is awesome, but let's not waste any time. Do you like playing the waves?",
	
]

var once = false
var dialog_index = 0
var finished = false


func _ready():
	if Globals.ColinDialog1Start == false || Globals.ColinDialog1End == true:
		self.scale = Vector2(0, 0) # Hide
		return
	else:
		load_dialog()
func _process(delta):
		if Globals.ColinDialog1Start == false || Globals.ColinDialog1End == true:
			return
		if Input.is_action_just_pressed("attack"):
			load_dialog()
			$"TitleIntroduction/Timer".start()
func load_dialog():
	if dialog_index < dialog.size():
		if dialog_index == 0:
			Voices.play_voiceline(13)
		if dialog_index == 1:
			Voices.play_voiceline(14)
			Voices.stop(13)
#		if dialog_index == 2:
#			Voices.play_voiceline(6)
#			Voices.stop(5)
#		if dialog_index == 3:
#			Voices.play_voiceline(7)
#			Voices.stop(6)
		$"Text".bbcode_text = dialog[dialog_index]
		dialog_index += 1
		$"Tween".interpolate_property(
			$"Text", "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$"Tween".start()
	else:
		Globals.ColinDialog1Start = false
		self.scale = Vector2(0, 0)
		Globals.cantmove = false
		Globals.Cutscene = false
		Globals.ColinDialog1End = true
		Voices.stop(14)
