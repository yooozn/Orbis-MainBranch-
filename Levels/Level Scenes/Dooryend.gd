extends StaticBody2D


var area = Area2D
func _process(delta):
	if Globals.ColinDefeated == false and Globals.MichelleDefeated == false and Globals.MackenzieDefeated == false:
		$AnimatedSprite.play("Neutral")
	else:
		if Globals.ColinDefeated == true and Globals.MichelleDefeated == true and Globals.MackenzieDefeated == true:
			print('yas')
			$AnimatedSprite.play("Open")
			$CollisionShape2D.disabled = true
