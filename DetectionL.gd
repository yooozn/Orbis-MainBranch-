extends Area2D


func _on_DetectionL_area_entered(area):
		if area.is_in_group("Enemy"):
			print("yass")
