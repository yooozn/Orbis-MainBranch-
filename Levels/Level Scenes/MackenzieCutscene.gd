extends CanvasLayer
var dialog = [
	"Quite the sight, Isn't it? Uh, the city, not the statue, haha.",
	"You are now in this world's capital, floating atop the rest of the dream.",
	"Isn't it increbile how much your being can take in without being overwhelemed by your senses?",
	"There is such as cosmic weight to everything that exsists... In any world.",
	"Haha, anyway, you look well. Seems you've met a few of my friends. I'm sure everyone else is dying to meet you, so I encourage you to keep exploring!",
	"See you around!"
]

var once = false
var dialog_index = 0
var finished = false


func _ready():
	if Globals.MackenzieDialog2Start == false:
		self.scale = Vector2(0, 0) # Hide
		return
	else:
		load_dialog()
func _process(delta):
		if Globals.MackenzieDialog2Start == false:
			return
		if Input.is_action_just_pressed("attack"):
			$"../TitleIntroduction/Timer".start()
			load_dialog()
func load_dialog():
	if dialog_index < dialog.size():
		if dialog_index == 0:
			Voices.play_voiceline(22)
		if dialog_index == 1:
			Voices.play_voiceline(17)
			Voices.stop(22)
		if dialog_index == 2:
			Voices.play_voiceline(18)
			Voices.stop(17)
		if dialog_index == 3:
			Voices.play_voiceline(19)
			Voices.stop(18)
		if dialog_index == 4:
			Voices.play_voiceline(20)
			Voices.stop(19)
		if dialog_index == 5:
			Voices.play_voiceline(21)
			Voices.stop(20)
		$"Text".bbcode_text = dialog[dialog_index]
		dialog_index += 1
		$"Tween".interpolate_property(
			$"Text", "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$"Tween".start()
	else:
		Globals.MackenzieDialog2Start = false
		self.scale = Vector2(0, 0)
		Globals.cantmove = false
		Globals.Cutscene = false
		Globals.MackenzieDialog2End = true
		$"../../MackenzieIdle1-1/AnimationPlayer".play('Dissapear')
		Voices.stop(21)
		Music.stop(2)
		Music.play_music(7)
		


func _on_Timer_timeout():
	$"TextBox".value += 5
