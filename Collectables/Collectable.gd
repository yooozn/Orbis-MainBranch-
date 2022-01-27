extends Area2D

signal berries_collected
var berries = Globals.berries
var berry = false
func _ready():
	if berry == false:
		$AnimationPlayer.play('Idle')
	else:
		queue_free()
	
func _on_Collectable_body_entered(body):
	if body.is_in_group("Player"):
		collected()

func collected():
	$"Collect".play()
	berries = berries + 1
	var BerryLabel = "Berries: "+String(berries)
	Globals.berries += 1
	emit_signal('berries_collected')
	$AnimationPlayer.play('Taken')
	Globals.berries_collected = true
	berry = true
