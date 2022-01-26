extends Area2D

signal berries_collected
var berries = Globals.berries

func _ready():
	$AnimationPlayer.play('Idle')
	
func _on_Collectable_body_entered(body):
	if body.is_in_group("Player"):
		collected()

func collected():
	berries = berries + 1
	var BerryLabel = "Berries: "+String(berries)
	Globals.berries += 1
	emit_signal('berries_collected')
	$AnimationPlayer.play('taken')
	Globals.berries_collected = true
	queue_free()
	if Globals.berries_collected == true:
		self.queue_free()
