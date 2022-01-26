extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	var startScale = rng.randf_range(0.1,.4)
	$Tween.interpolate_property(self,"scale",Vector2(startScale,startScale),Vector2(1.2,1.2),.5,Tween.TRANS_LINEAR,Tween.EASE_IN)
	$Tween.interpolate_property(self, "position", position, Globals.player.position, .6,Tween.TRANS_LINEAR,Tween.EASE_IN,.5)
	$Tween.start()
	yield(get_tree().create_timer(1),"timeout")
	queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
