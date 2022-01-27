extends CanvasLayer


var dialog = [
	"Splendid job, little ghost! You fought well against The Dreamer in your mind.",
	"Of course, you'll have to let me to change your perspective. That's what we agreed on, right?",
	"The Dreamer created and invited us to this world. When we arrived, Orbis was still being built.",
	"And I was asked to act as The Dreamer until it was finished.",
	"But, I truly didn't expect the full-time residents to build a statue of me though, haha!",
	"The Dreamer wanted to live among this world's people, not above them as well.",
	"However, Orbis seems to be complete now, and everyone is here. Why don't you return to Spark Forest to meet The Dreamer? Safe travels, and have fun!",
]

var once = false
var dialog_index = 0
var finished = false


func _ready():
	if Globals.MackenzieDialog3Start == false || Globals.MackenzieDialog3End == true:
		self.scale = Vector2(0, 0) # Hide
		return
	else:
		load_dialog()
func _process(delta):
		if Globals.MackenzieDialog3Start == false || Globals.MackenzieDialog3End == true:
			return
		if Input.is_action_just_pressed("attack"):
			load_dialog()
func load_dialog():
	if dialog_index < dialog.size():
		if dialog_index == 0:
				Voices.play_voiceline(28)
		if dialog_index == 1:
			Voices.play_voiceline(29)
			Voices.stop(13)
		if dialog_index == 2:
			Voices.play_voiceline(30)
			Voices.stop(29)
		if dialog_index == 3:
			Voices.play_voiceline(31)
			Voices.stop(30)
		if dialog_index == 4:
			Voices.play_voiceline(32)
			Voices.stop(31)
		if dialog_index == 5:
			Voices.play_voiceline(33)
			Voices.stop(32)
		if dialog_index == 6:
			Voices.play_voiceline(34)
			Voices.stop(33)
		$"Text".bbcode_text = dialog[dialog_index]
		dialog_index += 1
		$"Tween".interpolate_property(
			$"Text", "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$"Tween".start()
	else:
		Globals.MackenzieDialog3Start = false
		self.scale = Vector2(0, 0)
		Globals.cantmove = false
		Globals.Cutscene = false
		Globals.MackenzieDialog3End = true
		Voices.stop(35)
