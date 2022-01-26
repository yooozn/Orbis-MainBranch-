extends CanvasLayer


var dialog = [
	"Hey, there you are, little ghost! Everyone has been telling me all about you.",
	"I guess I should introduce myself: I'm the Dreamer, Y'know, the one everyone has been talking about.",
	"After so many years, I'm so glad I get to be with all my friends again.",
	"I created this world just for that, so I hope you've been having fun. Even if you are a bit different from the rest.",
	"Anyway, let's skip to the good stuff: Let's have a total blast, 'cause this is gonna be epic!.",
]

var once = false
var dialog_index = 0
var finished = false


func _ready():
	if Globals.SamDialog1Start == false:
		self.scale = Vector2(0, 0) # Hide
		return
	else:
		load_dialog()
func _process(delta):
		if Globals.SamDialog1Start == false:
			return
		if Input.is_action_just_pressed("attack"):
			load_dialog()
func load_dialog():
	if dialog_index < dialog.size():
		if dialog_index == 0:
			Voices.play_voiceline(23)
		if dialog_index == 1:
			Voices.play_voiceline(24)
			Voices.stop(23)
		if dialog_index == 2:
			Voices.play_voiceline(25)
			Voices.stop(24)
		if dialog_index == 3:
			Voices.play_voiceline(26)
			Voices.stop(25)
		if dialog_index == 4:
			Voices.play_voiceline(27)
			Voices.stop(26)
		$"Text".bbcode_text = dialog[dialog_index]
		dialog_index += 1
		$"Tween".interpolate_property(
			$"Text", "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$"Tween".start()
	else:
		Globals.SamDialog1Start = false
		self.scale = Vector2(0, 0)
		Globals.cantmove = false
		Globals.Cutscene = false
		Globals.SamDialog1End = true
		Voices.stop(27)
		Music.stop(10)
		Music.play_music(11)
		


func _on_Timer_timeout():
	$"TextBox".value += 5
