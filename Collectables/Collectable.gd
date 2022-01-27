extends Area2D
		   
signal berries_collected
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
	var BerryLabel = "Berries: "+String(Globals.berries)
	Globals.berries += 1
	emit_signal('berries_collected')
	$AnimationPlayer.play('Taken')
	Globals.berries_collected = true
