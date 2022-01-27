extends Node2D




func _on_Music_body_entered(body):
	$"Music/CollisionShape2D".position.x = -999
	$"Music".position.x = -999
	Music.play_music(3)
	Music.stop(1)
