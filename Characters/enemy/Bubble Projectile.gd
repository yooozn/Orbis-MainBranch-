extends Area2D

var move = Vector2.ZERO
var target 
var look_vec = Vector2.ZERO
var speed = 10
	
func _ready():
	target = Globals.player.global_position.x
	$Tween.interpolate_property(self, "position:x", position.x, target, 1,Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()
	yield(get_tree().create_timer(1),"timeout")
	queue_free()
#func _physics_process(delta):
#	move = Vector2.ZERO
#
#	move = position.move_toward(target, delta)
#	print('target'+ str(target))
#	move = move.normalized() * speed
#	position += move
#	print(position)
	
func _on_Bubble_Projectile_body_entered(body):
		if body.is_in_group("Player"):
			Globals.player.damage(1)
			queue_free()
