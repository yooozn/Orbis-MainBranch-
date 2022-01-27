extends CanvasLayer


var dialog = [
	"Hi again, little ghost, it's nice of you to visit me here.",
	"Y'know the more I look at you, the more I see The Dreamer in you.",
	"Hm? Oh, I know what you're thinking. Recall what I said before: 'everyone calls me The Dreamer.",
	"I think it's time you learn the truth.",
	"In reality, or rather, I this dream world, I am one of many close friends to The Dreamer.",
	"But please, don't think any less of me. I am my own entity, and the main character of my own life's story. Just as you are to yours.",
	"How about this? I'll tell you the whole story if you can beat me.",
	"However, the way I tell that story, the way truths will be revealed or concealed may affect your upcomming reality.",
	"But, that doesn't mean I'm obligated to lose, my friend!",
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
			Voices.stop(28)
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
		if dialog_index == 7:
			Voices.play_voiceline(35)
			Voices.stop(34)
		if dialog_index == 8:
			Voices.play_voiceline(36)
			Voices.stop(35)
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
		Voices.stop(36)


func _on_Timer_timeout():
	pass # Replace with function body.
