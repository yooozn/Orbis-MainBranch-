extends CanvasLayer

var dialog = [
	"So it's you. Colin told me to expect your arrival. However, I wasn't expecting someone as small as yourself.",
	"Anyhow, the answers you want may be an unspoken word, or an unheard of formula.",
	"Or perhaps, something simpler, something like a key. In that case, all you need is a fitting door.",
	"The intelligence behind such gorgeous flames, ah, now don't I sound fancy? Even in this world that defies physics, I can still understand every movement.", 
	"Is it foolish to unlock an impossible sequence? Even if it's already here?",
	"I will shine brighter than fire, while you will burn in a single touch!",
	
]

var once = false
var dialog_index = 0
var finished = false


func _ready():
	if Globals.MichelleDialog1Start == false || Globals.MichelleDialog1End == true:
		self.scale = Vector2(0, 0) # Hide
		return
	else:
		load_dialog()
func _process(delta):
		if Globals.MichelleDialog1Start == false || Globals.MichelleDialog1End == true:
			return
		if Input.is_action_just_pressed("attack"):
			load_dialog()
func load_dialog():
	if dialog_index < dialog.size():
		if dialog_index == 0:
			Voices.play_voiceline(4)
		if dialog_index == 1:
			Voices.play_voiceline(5)
			Voices.stop(4)
		if dialog_index == 2:
			Voices.play_voiceline(6)
			Voices.stop(5)
		if dialog_index == 3:
			Voices.play_voiceline(7)
			Voices.stop(6)
		if dialog_index == 4:
			Voices.play_voiceline(8)
			Voices.stop(7)
		if dialog_index == 5:
			Voices.play_voiceline(9)
			Voices.stop(8)
		$"Text".bbcode_text = dialog[dialog_index]
		dialog_index += 1
		$"Tween".interpolate_property(
			$"Text", "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$"Tween".start()
	else:
		Globals.MichelleDialog1Start = false
		self.scale = Vector2(0, 0)
		Globals.cantmove = false
		Globals.Cutscene = false
		Globals.MichelleDialog1End = true
		Voices.stop(9)
