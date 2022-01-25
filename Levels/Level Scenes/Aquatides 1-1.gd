extends Node2D

#	pass


func _on_Music_body_entered(body):
	$"Music/CollisionShape2D".position.x = 0
	$"Music".position.x = 0
	Music.play_music(3)
	$"Music/CollisionShape2D".queue_free()
	print("sam")


func _on_Music_body_exited(body):
#	$"Music/CollisionShape2D".disabled = true
	pass
