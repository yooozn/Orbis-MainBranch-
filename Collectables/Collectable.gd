extends Area2D

signal berries_collected

func _ready():
	$AnimationPlayer.play('Idle')
	
func _on_Collectable_body_entered(body):
	if body.is_in_group("Player"):
		collected()

func collected():
	emit_signal('berries_collected')
	$AnimationPlayer.play('taken')
	Globals.berries_collected = true
	queue_free()
	if Globals.berries_collected == true:
		self.queue_free()
