extends Area2D


func _on_AnimatedSprite_animation_finished():
	$AnimatedSprite.stop()


func _on_Switch_area_entered(area):
	if area.is_in_group("Attack") and Input.is_action_pressed("attack"):
		$AnimatedSprite.play("Interact")
		$CollisionShape2D.queue_free()
		Globals.door2 = true
		print('Touhou')



func _on_Switch_body_entered(body):
		if $AnimatedSprite.animation == "Interact":
			$AnimatedSprite.play("Ending")
			$AnimatedSprite.stop()



