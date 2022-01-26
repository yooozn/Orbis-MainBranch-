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
