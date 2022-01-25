extends CanvasLayer

var dialog = [
	
	"The heat my flames provide allow such magical coral to grow and function above.",
	"But that is behind you now. Why not head to this world's capital? I'm sure you'll find some fun there.",
	
]

var once = false
var dialog_index = 0
var finished = false


func _ready():
	if Globals.MichelleDefeated == false || Globals.MichelleDialog2End == true:
		self.scale = Vector2(0, 0) # Hide
		return
	else:
		load_dialog()
func _process(delta):
		if Globals.MichelleDefeated == false || Globals.MichelleDialog2End == true:
			return
		if Input.is_action_just_pressed("attack"):
			load_dialog()
func load_dialog():
	if dialog_index < dialog.size():
		if dialog_index == 0:
			Voices.play_voiceline(11)
		if dialog_index == 1:
			Voices.play_voiceline(12)
			Voices.stop(11)
		$"Text".bbcode_text = dialog[dialog_index]
		dialog_index += 1
		$"Tween".interpolate_property(
			$"Text", "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$"Tween".start()
	else:
		Globals.MichelleDialog2Start = false
		self.scale = Vector2(0, 0)
		Globals.cantmove = false
		Globals.Cutscene = false
		Globals.MichelleDialog2End = true
		Voices.stop(12)
